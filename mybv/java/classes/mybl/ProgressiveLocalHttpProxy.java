package mybl;

import android.util.Log;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

public class ProgressiveLocalHttpProxy implements Closeable {
    private static final String TAG = "ProgressiveProxy";
    private static final int MAX_RETRIES = 3;
    private static final int RETRY_DELAY_MS = 500;
    
    private final ServerSocket serverSocket;
    private final ConcurrentHashMap<String, List<String>> upstreamByKey = new ConcurrentHashMap<>();
    private final ExecutorService executorService;
    private volatile boolean running = true;
    
    public ProgressiveLocalHttpProxy() throws IOException {
        this.serverSocket = new ServerSocket(0);
        this.executorService = Executors.newFixedThreadPool(4);
        
        executorService.submit(new Runnable() {
            @Override
            public void run() {
                acceptConnections();
            }
        });
        Log.i(TAG, "Proxy started on port " + getPort());
    }
    
    private OkHttpClient createClient() {
        return new OkHttpClient.Builder()
            .connectTimeout(10, java.util.concurrent.TimeUnit.SECONDS)
            .readTimeout(30, java.util.concurrent.TimeUnit.SECONDS)
            .retryOnConnectionFailure(true)
            .build();
    }
    
    public int getPort() {
        return serverSocket.getLocalPort();
    }
    
    public String register(String upstreamUrl) {
        List<String> urls = new ArrayList<>();
        urls.add(upstreamUrl);
        return registerWithBackup(urls);
    }
    
    public String registerWithBackup(List<String> upstreamUrls) {
        if (upstreamUrls == null || upstreamUrls.isEmpty()) {
            return null;
        }
        
        String primaryUrl = upstreamUrls.get(0);
        String key = md5Hex(primaryUrl);
        upstreamByKey.put(key, new ArrayList<>(upstreamUrls));
        
        String proxyUrl = "http://127.0.0.1:" + getPort() + "/" + key + ".mp4";
        Log.i(TAG, "Registered: " + key + " -> " + upstreamUrls.size() + " URLs");
        for (int i = 0; i < upstreamUrls.size(); i++) {
            String url = upstreamUrls.get(i);
            Log.i(TAG, "  URL[" + i + "]: " + (url.length() > 100 ? url.substring(0, 100) + "..." : url));
        }
        Log.i(TAG, "Proxy URL: " + proxyUrl);
        return proxyUrl;
    }
    
    public void resetRegistrations() {
        upstreamByKey.clear();
        Log.i(TAG, "All registrations cleared");
    }
    
    private void acceptConnections() {
        while (running) {
            try {
                Socket clientSocket = serverSocket.accept();
                executorService.submit(new Runnable() {
                    @Override
                    public void run() {
                        handleClient(clientSocket);
                    }
                });
            } catch (IOException e) {
                if (running) {
                    Log.e(TAG, "Error accepting connection: " + e.getMessage());
                }
            }
        }
    }
    
    private void handleClient(Socket clientSocket) {
        try {
            InputStream clientInput = clientSocket.getInputStream();
            OutputStream clientOutput = clientSocket.getOutputStream();
            
            String requestLine = readLine(clientInput);
            Log.i(TAG, "Request: " + requestLine);
            
            if (requestLine == null || requestLine.isEmpty()) {
                clientSocket.close();
                return;
            }
            
            String[] parts = requestLine.split(" ");
            if (parts.length < 3) {
                clientSocket.close();
                return;
            }
            
            String method = parts[0];
            String path = parts[1];
            
            String key = extractKey(path);
            List<String> upstreamUrls = upstreamByKey.get(key);
            
            if (upstreamUrls == null || upstreamUrls.isEmpty()) {
                Log.e(TAG, "No upstream URL for key: " + key);
                sendError(clientOutput, 404, "Not Found");
                clientSocket.close();
                return;
            }
            
            String rangeHeader = null;
            String line;
            while ((line = readLine(clientInput)) != null && !line.isEmpty()) {
                if (line.startsWith("Range:")) {
                    rangeHeader = line.substring("Range:".length()).trim();
                }
            }
            
            Log.i(TAG, "Range: " + (rangeHeader != null ? rangeHeader : "none"));
            
            boolean success = false;
            Exception lastException = null;
            OkHttpClient client = createClient();
            
            for (int retry = 0; retry < MAX_RETRIES && !success; retry++) {
                if (retry > 0) {
                    Log.i(TAG, "[RETRY] Attempt " + (retry + 1) + "/" + MAX_RETRIES);
                    try {
                        Thread.sleep(RETRY_DELAY_MS);
                    } catch (InterruptedException ie) {
                        break;
                    }
                }
                
                for (int urlIndex = 0; urlIndex < upstreamUrls.size(); urlIndex++) {
                    String upstreamUrl = upstreamUrls.get(urlIndex);
                    String cdn = extractCdn(upstreamUrl);
                    
                    Log.i(TAG, "[CDN_FAILOVER] Trying URL[" + urlIndex + "/" + upstreamUrls.size() + "]: cdn=" + cdn);
                    Log.i(TAG, "[CDN_FAILOVER] URL: " + (upstreamUrl.length() > 100 ? upstreamUrl.substring(0, 100) + "..." : upstreamUrl));
                    
                    Request.Builder requestBuilder = new Request.Builder()
                        .url(upstreamUrl)
                        .header("User-Agent", "Bilibili Freedoooooom/MarkII")
                        .header("Connection", "close");
                    
                    boolean isPcPlatform = upstreamUrl.contains("platform=pc");
                    if (isPcPlatform) {
                        requestBuilder.header("Referer", "https://www.bilibili.com");
                        Log.i(TAG, "[CDN_FAILOVER] Request headers: User-Agent, Connection: close, Referer: https://www.bilibili.com (platform=pc detected)");
                    } else {
                        Log.i(TAG, "[CDN_FAILOVER] Request headers: User-Agent, Connection: close");
                    }
                    
                    if (rangeHeader != null) {
                        requestBuilder.header("Range", rangeHeader);
                    }
                    
                    Request request = requestBuilder.build();
                    
                    try (Response response = client.newCall(request).execute()) {
                        int responseCode = response.code();
                        Log.i(TAG, "[CDN_FAILOVER] Response: " + responseCode + " from cdn=" + cdn);
                        
                        if (responseCode == 403) {
                            Log.w(TAG, "[CDN_FAILOVER] Got 403 from cdn=" + cdn + ", trying next URL");
                            lastException = new IOException("HTTP 403 from " + cdn);
                            continue;
                        }
                        
                        if (responseCode >= 400) {
                            Log.w(TAG, "[CDN_FAILOVER] Got " + responseCode + " from cdn=" + cdn + ", trying next URL");
                            lastException = new IOException("HTTP " + responseCode + " from " + cdn);
                            continue;
                        }
                        
                        StringBuilder responseHeaders = new StringBuilder();
                        responseHeaders.append("HTTP/1.1 ").append(responseCode).append(" ")
                            .append(response.message()).append("\r\n");
                        
                        for (String name : response.headers().names()) {
                            for (String value : response.headers().values(name)) {
                                if (!name.equalsIgnoreCase("Connection") && !name.equalsIgnoreCase("Keep-Alive")) {
                                    responseHeaders.append(name).append(": ").append(value).append("\r\n");
                                }
                            }
                        }
                        responseHeaders.append("Connection: close\r\n");
                        responseHeaders.append("\r\n");
                        
                        clientOutput.write(responseHeaders.toString().getBytes("UTF-8"));
                        clientOutput.flush();
                        
                        if (response.body() != null) {
                            InputStream upstreamInput = response.body().byteStream();
                            byte[] buffer = new byte[8192];
                            int bytesRead;
                            long totalBytes = 0;
                            
                            while ((bytesRead = upstreamInput.read(buffer)) != -1) {
                                clientOutput.write(buffer, 0, bytesRead);
                                totalBytes += bytesRead;
                            }
                            
                            Log.i(TAG, "[CDN_FAILOVER] Success! Transferred " + totalBytes + " bytes from cdn=" + cdn);
                            success = true;
                            break;
                        }
                    } catch (Exception e) {
                        Log.e(TAG, "[CDN_FAILOVER] Error with cdn=" + cdn + ": " + e.getMessage());
                        lastException = e;
                    }
                }
            }
            
            if (!success) {
                Log.e(TAG, "[CDN_FAILOVER] All URLs failed, sending error to client");
                if (lastException != null) {
                    sendError(clientOutput, 502, "Bad Gateway: " + lastException.getMessage());
                } else {
                    sendError(clientOutput, 502, "Bad Gateway");
                }
            }
            
        } catch (Exception e) {
            Log.e(TAG, "Error handling client: " + e.getMessage());
        } finally {
            try {
                clientSocket.close();
            } catch (IOException e) {
                Log.e(TAG, "Error closing client socket: " + e.getMessage());
            }
        }
    }
    
    private String extractCdn(String url) {
        try {
            int start = url.indexOf("://");
            if (start >= 0) {
                start += 3;
                int end = url.indexOf("/", start);
                if (end > start) {
                    return url.substring(start, end);
                }
            }
        } catch (Exception e) {
        }
        return "unknown";
    }
    
    private void sendError(OutputStream output, int code, String message) throws IOException {
        String response = "HTTP/1.1 " + code + " " + message + "\r\n\r\n";
        output.write(response.getBytes("UTF-8"));
        output.flush();
    }
    
    private String extractKey(String path) {
        if (path.startsWith("/")) {
            path = path.substring(1);
        }
        if (path.endsWith(".mp4")) {
            path = path.substring(0, path.length() - 4);
        }
        return path;
    }
    
    private String readLine(InputStream input) throws IOException {
        StringBuilder sb = new StringBuilder();
        int ch;
        while ((ch = input.read()) != -1) {
            if (ch == '\r') {
                ch = input.read();
                if (ch == '\n') {
                    break;
                }
                sb.append('\r');
                if (ch != -1) {
                    sb.append((char) ch);
                }
            } else {
                sb.append((char) ch);
            }
        }
        return sb.toString();
    }
    
    private String md5Hex(String text) {
        try {
            java.security.MessageDigest md = java.security.MessageDigest.getInstance("MD5");
            byte[] digest = md.digest(text.getBytes("UTF-8"));
            StringBuilder sb = new StringBuilder(digest.length * 2);
            for (byte b : digest) {
                sb.append(String.format("%02x", b));
            }
            return sb.toString();
        } catch (Exception e) {
            return String.valueOf(text.hashCode());
        }
    }
    
    @Override
    public void close() throws IOException {
        running = false;
        try {
            serverSocket.close();
        } catch (IOException e) {
            Log.e(TAG, "Error closing server socket: " + e.getMessage());
        }
        executorService.shutdown();
        Log.i(TAG, "Proxy closed");
    }
}
