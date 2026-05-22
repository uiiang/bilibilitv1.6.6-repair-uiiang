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

    public CdnFailoverDataSource(DataSource.Factory upstreamFactory, List<Uri> candidates, String kind) {
        this.upstreamFactory = upstreamFactory;
        this.candidates = candidates;
        this.kind = kind;
    }

    @Override
    public void addTransferListener(TransferListener transferListener) {
        transferListeners.add(transferListener);
        if (upstream != null) {
            upstream.addTransferListener(transferListener);
        }
    }

    @Override
    public long open(DataSpec dataSpec) throws IOException {
        closeQuietly();
        
        if (candidates.isEmpty()) {
            throw new IOException("No CDN candidates (kind=" + kind + ")");
        }

        Log.i(TAG, "[OPEN] Opening data source, candidates=" + candidates.size() + ", kind=" + kind);
        
        IOException lastException = null;
        for (int attempt = 0; attempt < candidates.size(); attempt++) {
            int idx = (preferredIndex + attempt) % candidates.size();
            Uri uri = candidates.get(idx);
            
            Log.i(TAG, "[OPEN] Trying candidate " + idx + ": " + uri.getHost());
            
            DataSource ds = upstreamFactory.createDataSource();
            for (TransferListener listener : transferListeners) {
                ds.addTransferListener(listener);
            }
            
            DataSpec spec = dataSpec.buildUpon().setUri(uri).build();
            try {
                long openedLength = ds.open(spec);
                upstream = ds;
                preferredIndex = idx;
                Log.i(TAG, "[OPEN] Successfully opened candidate " + idx + ": " + uri.getHost() + ", length=" + openedLength);
                return openedLength;
            } catch (IOException e) {
                Log.w(TAG, "[OPEN] Failed to open candidate " + idx + ": " + uri.getHost() + ", error=" + e.getMessage());
                closeQuietly(ds);
                lastException = e;
            }
        }
        
        Log.e(TAG, "[OPEN] All candidates failed, kind=" + kind);
        throw lastException != null ? lastException : new IOException("Failed to open any CDN candidate (kind=" + kind + ")");
    }

    @Override
    public int read(byte[] buffer, int offset, int length) throws IOException {
        if (upstream == null) {
            throw new IllegalStateException("read() before open() (kind=" + kind + ")");
        }
        return upstream.read(buffer, offset, length);
    }

    @Override
    public Uri getUri() {
        return upstream != null ? upstream.getUri() : null;
    }

    @Override
    public Map<String, List<String>> getResponseHeaders() {
        if (upstream != null) {
            return upstream.getResponseHeaders();
        }
        return Collections.emptyMap();
    }

    @Override
    public void close() {
        closeQuietly();
    }

    private void closeQuietly() {
        if (upstream != null) {
            closeQuietly(upstream);
            upstream = null;
        }
    }

    private void closeQuietly(DataSource ds) {
        try {
            ds.close();
        } catch (Exception e) {
            Log.w(TAG, "[CLOSE] Error closing data source: " + e.getMessage());
        }
    }
}
