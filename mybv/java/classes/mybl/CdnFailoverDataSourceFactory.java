package mybl;

import android.net.Uri;

import com.google.android.exoplayer2.upstream.DataSource;

import java.util.List;

public class CdnFailoverDataSourceFactory implements DataSource.Factory {
    private final DataSource.Factory upstreamFactory;
    private final List<Uri> candidates;
    private final String kind;

    public CdnFailoverDataSourceFactory(DataSource.Factory upstreamFactory, List<Uri> candidates, String kind) {
        this.upstreamFactory = upstreamFactory;
        this.candidates = candidates;
        this.kind = kind;
    }

    @Override
    public DataSource createDataSource() {
        return new CdnFailoverDataSource(upstreamFactory, candidates, kind);
    }
}
