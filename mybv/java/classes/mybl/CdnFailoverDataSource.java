package mybl;

import android.net.Uri;
import android.util.Log;

import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DataSpec;
import com.google.android.exoplayer2.upstream.TransferListener;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

public class CdnFailoverDataSource implements DataSource {
    private static final String TAG = "CdnFailoverDataSource";
    
    private final DataSource.Factory upstreamFactory;
    private final List<Uri> candidates;
    private final String kind;
    
    private DataSource upstream;
    private final List<TransferListener> transferListeners = new ArrayList<>(2);
    private int preferredIndex = 0;
    private long lastOpenTime = 0;
    private int totalOpenAttempts = 0;
    private int successfulOpens = 0;
    private int failedOpens = 0;

    public CdnFailoverDataSource(DataSource.Factory upstreamFactory, List<Uri> candidates, String kind) {
        this.upstreamFactory = upstreamFactory;
        this.candidates = candidates;
        this.kind = kind;
        //Log.i(TAG, "[INIT] Created CdnFailoverDataSource: kind=" + kind + ", candidates=" + candidates.size());
        //for (int i = 0; i < candidates.size(); i++) {
        //    Log.i(TAG, "[INIT] Candidate " + i + ": " + candidates.get(i).getHost());
        //}
    }

    @Override
    public void addTransferListener(TransferListener transferListener) {
        //Log.i(TAG, "[TRANSFER] Adding transfer listener: " + transferListener.getClass().getSimpleName());
        transferListeners.add(transferListener);
        if (upstream != null) {
            upstream.addTransferListener(transferListener);
        }
    }

    @Override
    public long open(DataSpec dataSpec) throws IOException {
        long openStartTime = System.currentTimeMillis();
        lastOpenTime = openStartTime;
        totalOpenAttempts++;
        
        //Log.i(TAG, "[OPEN] ========== OPEN REQUEST #" + totalOpenAttempts + " ==========");
        //Log.i(TAG, "[OPEN] kind=" + kind + ", candidates=" + candidates.size() + ", preferredIndex=" + preferredIndex);
        //Log.i(TAG, "[OPEN] DataSpec: uri=" + dataSpec.uri.getHost() + ", position=" + dataSpec.position + ", length=" + dataSpec.length);
        //Log.i(TAG, "[OPEN] Stats: successfulOpens=" + successfulOpens + ", failedOpens=" + failedOpens);
        
        closeQuietly();
        
        if (candidates.isEmpty()) {
            Log.e(TAG, "[OPEN] ERROR: No CDN candidates available!");
            throw new IOException("No CDN candidates (kind=" + kind + ")");
        }

        IOException lastException = null;
        for (int attempt = 0; attempt < candidates.size(); attempt++) {
            int idx = (preferredIndex + attempt) % candidates.size();
            Uri uri = candidates.get(idx);
            
            long attemptStartTime = System.currentTimeMillis();
            //Log.i(TAG, "[OPEN] Attempt " + (attempt + 1) + "/" + candidates.size() + ": candidate " + idx + " - " + uri.getHost());
            //Log.i(TAG, "[OPEN] Candidate details: scheme=" + uri.getScheme() + ", path=" + uri.getPath());
            
            DataSource ds = upstreamFactory.createDataSource();
            //Log.i(TAG, "[OPEN] Created data source: " + ds.getClass().getSimpleName());
            
            for (TransferListener listener : transferListeners) {
                //Log.i(TAG, "[OPEN] Adding transfer listener to new data source");
                ds.addTransferListener(listener);
            }
            
            DataSpec spec = dataSpec.buildUpon().setUri(uri).build();
            //Log.i(TAG, "[OPEN] Built DataSpec with candidate URI: " + spec.uri);
            
            try {
                //Log.i(TAG, "[OPEN] Calling ds.open()...");
                long openedLength = ds.open(spec);
                long openDuration = System.currentTimeMillis() - attemptStartTime;
                
                upstream = ds;
                preferredIndex = idx;
                successfulOpens++;
                
                //Log.i(TAG, "[OPEN] SUCCESS! candidate " + idx + " opened in " + openDuration + "ms");
                //Log.i(TAG, "[OPEN] openedLength=" + openedLength + ", new preferredIndex=" + preferredIndex);
                //Log.i(TAG, "[OPEN] ========== OPEN COMPLETED SUCCESSFULLY ==========");
                return openedLength;
            } catch (IOException e) {
                long openDuration = System.currentTimeMillis() - attemptStartTime;
                failedOpens++;
                
                Log.w(TAG, "[OPEN] FAILED! candidate " + idx + " (" + uri.getHost() + ") failed after " + openDuration + "ms");
                Log.w(TAG, "[OPEN] Error type: " + e.getClass().getName());
                Log.w(TAG, "[OPEN] Error message: " + e.getMessage());
                if (e.getCause() != null) {
                    Log.w(TAG, "[OPEN] Error cause: " + e.getCause().getClass().getName() + " - " + e.getCause().getMessage());
                }
                
                // Clear thread interrupt status after InterruptedIOException to prevent
                // subsequent CDN candidates from failing due to stale interrupt flag
                boolean isInterrupted = e instanceof java.io.InterruptedIOException || 
                    (e.getCause() instanceof java.io.InterruptedIOException) ||
                    (e.getMessage() != null && e.getMessage().contains("interrupted"));
                
                if (isInterrupted) {
                    boolean wasInterrupted = Thread.interrupted();
                    Log.w(TAG, "[OPEN] InterruptedIOException detected, clearing thread interrupt status (wasInterrupted=" + wasInterrupted + ")");
                }
                
                closeQuietly(ds);
                lastException = e;
            }
        }
        
        long totalOpenDuration = System.currentTimeMillis() - openStartTime;
        Log.e(TAG, "[OPEN] ========== ALL CANDIDATES FAILED ==========");
        Log.e(TAG, "[OPEN] Total attempts: " + candidates.size() + ", duration: " + totalOpenDuration + "ms");
        Log.e(TAG, "[OPEN] kind=" + kind + ", lastException=" + (lastException != null ? lastException.getClass().getName() : "null"));
        Log.e(TAG, "[OPEN] Stats: successfulOpens=" + successfulOpens + ", failedOpens=" + failedOpens);
        throw lastException != null ? lastException : new IOException("Failed to open any CDN candidate (kind=" + kind + ")");
    }

    @Override
    public int read(byte[] buffer, int offset, int length) throws IOException {
        if (upstream == null) {
            Log.e(TAG, "[READ] ERROR: read() called before open()!");
            throw new IllegalStateException("read() before open() (kind=" + kind + ")");
        }
        
        //long readStartTime = System.currentTimeMillis();
        //Log.i(TAG, "[READ] Reading: offset=" + offset + ", length=" + length + ", kind=" + kind);
        
        try {
            int bytesRead = upstream.read(buffer, offset, length);
            //long readDuration = System.currentTimeMillis() - readStartTime;
            //if (bytesRead == -1) {
            //    Log.i(TAG, "[READ] End of stream reached (bytesRead=-1), duration=" + readDuration + "ms");
            //} else if (bytesRead == 0) {
            //    Log.w(TAG, "[READ] No data read (bytesRead=0), duration=" + readDuration + "ms");
            //} else {
            //    Log.i(TAG, "[READ] Read " + bytesRead + " bytes in " + readDuration + "ms");
            //}
            return bytesRead;
        } catch (IOException e) {
            Log.e(TAG, "[READ] ERROR during read: " + e.getClass().getName() + " - " + e.getMessage());
            throw e;
        }
    }

    @Override
    public Uri getUri() {
        Uri uri = upstream != null ? upstream.getUri() : null;
        //Log.i(TAG, "[GET_URI] Returning: " + (uri != null ? uri.getHost() : "null"));
        return uri;
    }

    @Override
    public Map<String, List<String>> getResponseHeaders() {
        if (upstream != null) {
            Map<String, List<String>> headers = upstream.getResponseHeaders();
            //Log.i(TAG, "[HEADERS] Returning headers, count=" + headers.size());
            //for (Map.Entry<String, List<String>> entry : headers.entrySet()) {
            //    Log.i(TAG, "[HEADERS] " + entry.getKey() + ": " + entry.getValue());
            //}
            return headers;
        }
        //Log.i(TAG, "[HEADERS] No upstream, returning empty headers");
        return Collections.emptyMap();
    }

    @Override
    public void close() {
        //Log.i(TAG, "[CLOSE] close() called, kind=" + kind);
        closeQuietly();
    }

    private void closeQuietly() {
        if (upstream != null) {
            //Log.i(TAG, "[CLOSE] Closing upstream data source: " + upstream.getClass().getSimpleName());
            closeQuietly(upstream);
            upstream = null;
            //Log.i(TAG, "[CLOSE] Upstream closed and set to null");
        }
        //else {
        //    Log.i(TAG, "[CLOSE] No upstream to close");
        //}
    }

    private void closeQuietly(DataSource ds) {
        //Log.i(TAG, "[CLOSE] Attempting to close data source: " + ds.getClass().getSimpleName());
        try {
            ds.close();
            //Log.i(TAG, "[CLOSE] Data source closed successfully");
        } catch (Exception e) {
            Log.w(TAG, "[CLOSE] ERROR closing data source: " + e.getClass().getName() + " - " + e.getMessage());
        }
    }
}