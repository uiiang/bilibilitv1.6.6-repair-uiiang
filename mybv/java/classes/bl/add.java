package bl;

import android.support.annotation.NonNull;
import android.view.View;
import android.view.ViewGroup;
import android.support.v7.widget.RecyclerView;
import java.util.ArrayList;

public class add extends RecyclerView.a<RecyclerView.v> {
    private RecyclerView.a<RecyclerView.v> a;
    private ArrayList<add$a> b = new ArrayList<>();
    private ArrayList<add$a> c = new ArrayList<>();

    public add(RecyclerView.a<RecyclerView.v> adapter) {
        this.a = adapter;
        if (adapter != null && adapter.b()) {
            super.a(true);
        }
    }

    private add$a e(int viewType) {
        final int footerFlag = 0x20000000;
        final int headerFlag = 0x10000000;
        
        if (viewType >= footerFlag) {
            int index = (viewType - footerFlag) >> 24 & 0xff;
            return this.c.get(index);
        }
        if (viewType >= headerFlag) {
            int index = (viewType - headerFlag) >> 24 & 0xff;
            return this.b.get(index);
        }
        throw new IndexOutOfBoundsException("wtf! viewtype=" + Integer.toHexString(viewType));
    }

    @Override
    public int a() {
        return e() + f() + (this.a != null ? this.a.a() : 0);
    }

    @Override
    public int a(int position) {
        int headerCount = e();
        int adapterCount = this.a != null ? this.a.a() : 0;
        
        if (position >= headerCount && position < headerCount + adapterCount) {
            return this.a.a(position - headerCount);
        }
        if (position < headerCount) {
            return (position << 24) + 0x10000000;
        }
        return ((position - headerCount - adapterCount) << 24) + 0x20000000;
    }

    @Override
    public RecyclerView.v a(ViewGroup parent, int viewType) {
        if (viewType >= 0x10000000) {
            return e(viewType);
        }
        return this.a.a(parent, viewType);
    }

    @Override
    public void a(RecyclerView.c observer) {
        super.a(observer);
        if (this.a != null) {
            this.a.a(observer);
        }
    }

    @Override
    public void a(RecyclerView.v holder) {
        if (!(holder instanceof add$a)) {
            this.a.a(holder);
        }
    }

    @Override
    public void a(RecyclerView.v holder, int position) {
        if (holder instanceof add$a) {
            return;
        }
        int headerCount = e();
        this.a.a(holder, position - headerCount);
    }

    @Override
    public void a(RecyclerView recyclerView) {
        if (this.a != null) {
            this.a.a(recyclerView);
        }
    }

    public void a(View view) {
        a(view, null);
    }

    public void a(View view, Object data) {
        if (this.c.size() > 255) {
            throw new IllegalArgumentException("Footers count cannot be larger than 255");
        }
        this.c.add(new add$a(view, data));
    }

    @Override
    public void a(boolean hasStableIds) {
        super.a(hasStableIds);
        if (this.a != null) {
            this.a.a(hasStableIds);
        }
    }

    @Override
    public long b(int position) {
        int headerCount = e();
        int adapterCount = this.a != null ? this.a.a() : 0;
        
        if (position >= headerCount && position < headerCount + adapterCount) {
            return this.a.b(position - headerCount);
        }
        if (position < headerCount) {
            return (position << 24) + 0x10000000;
        }
        int footerPos = position - headerCount - adapterCount;
        if (footerPos >= 0 && footerPos < f()) {
            return (footerPos << 24) + 0x20000000;
        }
        return -1;
    }

    @Override
    public void b(RecyclerView.c observer) {
        super.b(observer);
        if (this.a != null) {
            this.a.b(observer);
        }
    }

    @Override
    public void b(RecyclerView recyclerView) {
        if (this.a != null) {
            this.a.b(recyclerView);
        }
    }

    @Override
    public void c(RecyclerView.v holder) {
        if (!(holder instanceof add$a)) {
            this.a.c(holder);
        }
    }

    @Override
    public void d(RecyclerView.v holder) {
        if (!(holder instanceof add$a)) {
            this.a.d(holder);
        }
    }

    public int e() {
        return this.b.size();
    }

    public int f() {
        return this.c.size();
    }

    public void clearFooters() {
        this.c.clear();
    }

    public void clearHeaders() {
        this.b.clear();
    }
}
