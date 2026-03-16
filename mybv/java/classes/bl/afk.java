package bl;

import android.content.Context;
import android.os.Bundle;
import android.text.format.Formatter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import com.bilibili.tv.R;
import com.bilibili.tv.widget.DrawFrameLayout;

public final class afk extends adw {
    
    public static final a Companion = new a(null);
    
    private DrawFrameLayout b;
    private DrawFrameLayout c;
    private DrawFrameLayout d;
    private DrawFrameLayout e;
    private DrawFrameLayout f;
    private DrawFrameLayout g;
    private DrawFrameLayout h;
    
    public afk() {
    }
    
    static final DrawFrameLayout a(afk fragment) {
        return fragment.b;
    }
    
    public final boolean a() {
        if (this.b != null && this.b.hasFocus()) {
            return false;
        }
        if (this.c != null && this.c.hasFocus()) {
            return false;
        }
        if (this.d != null && this.d.hasFocus()) {
            return false;
        }
        if (this.e != null && this.e.hasFocus()) {
            return false;
        }
        if (this.f != null && this.f.hasFocus()) {
            return false;
        }
        if (this.g != null && this.g.hasFocus()) {
            return false;
        }
        if (this.h != null && this.h.hasFocus()) {
            return false;
        }
        this.b.requestFocus();
        return true;
    }
    
    public final boolean b() {
        if (this.b == null) {
            return false;
        }
        return !this.b.hasFocus();
    }
    
    public boolean c() {
        return true;
    }
    
    public void d_() {
    }
    
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        bbi.b(inflater, "inflater");
        
        View view = inflater.inflate(R.layout.fragment_clean, container, false);
        bbi.a(view, "view");
        
        this.b = (DrawFrameLayout) this.a(view, R.id.clean);
        TextView cacheTextView = (TextView) this.a(view, R.id.cache);
        
        this.c = (DrawFrameLayout) this.a(view, R.id.image_size_hd);
        this.d = (DrawFrameLayout) this.a(view, R.id.image_size_thumbnail);
        
        this.b.setUpDrawable(R.drawable.shadow_white_rect);
        this.b.setOnFocusChangeListener(new b(this));
        
        this.c.setUpDrawable(R.drawable.shadow_white_rect);
        this.d.setUpDrawable(R.drawable.shadow_white_rect);
        
        this.c.setOnFocusChangeListener(new e(this));
        this.d.setOnFocusChangeListener(new e(this));
        
        int imageSize = abd.get_image_size(getActivity());
        updateImageSizeSelection(imageSize);
        
        this.c.setOnClickListener(new f(this, 0));
        this.d.setOnClickListener(new f(this, 1));
        
        this.e = (DrawFrameLayout) this.a(view, R.id.cache_limit_50);
        this.f = (DrawFrameLayout) this.a(view, R.id.cache_limit_100);
        this.g = (DrawFrameLayout) this.a(view, R.id.cache_limit_300);
        this.h = (DrawFrameLayout) this.a(view, R.id.cache_limit_500);
        
        this.e.setUpDrawable(R.drawable.shadow_white_rect);
        this.f.setUpDrawable(R.drawable.shadow_white_rect);
        this.g.setUpDrawable(R.drawable.shadow_white_rect);
        this.h.setUpDrawable(R.drawable.shadow_white_rect);
        
        this.e.setOnFocusChangeListener(new e(this));
        this.f.setOnFocusChangeListener(new e(this));
        this.g.setOnFocusChangeListener(new e(this));
        this.h.setOnFocusChangeListener(new e(this));
        
        int cacheLimit = abd.get_cache_limit(getActivity());
        updateCacheLimitSelection(cacheLimit);
        
        this.e.setOnClickListener(new g(this, 0));
        this.f.setOnClickListener(new g(this, 1));
        this.g.setOnClickListener(new g(this, 2));
        this.h.setOnClickListener(new g(this, 3));
        
        aoy imagePipelineFactory = ajq.b();
        bbi.a(imagePipelineFactory, "Fresco.getImagePipelineFactory()");
        ahd mainFileCache = imagePipelineFactory.g();
        bbi.a(mainFileCache, "Fresco.getImagePipelineFactory().mainFileCache");
        long cacheSize = mainFileCache.a();
        
        String cacheSizeText = "0M";
        if (cacheSize > 0) {
            cacheSizeText = Formatter.formatFileSize(getActivity(), cacheSize);
            bbi.a(cacheSizeText, "Formatter.formatFileSize(activity, cacheSize)");
        }
        
        cacheTextView.setText("本地图片缓存 : " + cacheSizeText);
        
        this.b.setOnClickListener(new c(cacheTextView));
        
        return view;
    }
    
    private void updateImageSizeSelection(int type) {
        if (type == 0) {
            this.c.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_50);
            this.d.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_10);
        } else {
            this.c.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_10);
            this.d.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_50);
        }
    }
    
    private void updateCacheLimitSelection(int type) {
        this.e.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_10);
        this.f.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_10);
        this.g.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_10);
        this.h.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_10);
        
        switch (type) {
            case 0:
                this.e.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_50);
                break;
            case 1:
                this.f.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_50);
                break;
            case 2:
                this.g.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_50);
                break;
            case 3:
                this.h.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_50);
                break;
        }
    }
    
    public static final class a {
        private a() {
        }
        
        public a(bbg bbgVar) {
            this();
        }
        
        public final afk a() {
            return new afk();
        }
    }
    
    final class b implements View.OnFocusChangeListener {
        
        final afk a;
        
        b(afk fragment) {
            this.a = fragment;
        }
        
        public final void onFocusChange(View v, boolean hasFocus) {
            afk.a(this.a).setUpEnabled(hasFocus);
        }
    }
    
    final class c implements View.OnClickListener {
        
        final TextView a;
        
        c(TextView textView) {
            this.a = textView;
        }
        
        public final void onClick(View v) {
            aoy imagePipelineFactory = aoy.a();
            bbi.a(imagePipelineFactory, "ImagePipelineFactory.getInstance()");
            aov imagePipeline = imagePipelineFactory.h();
            imagePipeline.c();
            
            this.a.setText("本地图片缓存 : 0M");
        }
    }
    
    final class e implements View.OnFocusChangeListener {
        
        final afk a;
        
        e(afk fragment) {
            this.a = fragment;
        }
        
        public final void onFocusChange(View v, boolean hasFocus) {
            if (v instanceof DrawFrameLayout) {
                ((DrawFrameLayout) v).setUpEnabled(hasFocus);
            }
        }
    }
    
    final class f implements View.OnClickListener {
        
        final afk a;
        final int type;
        
        f(afk fragment, int type) {
            this.a = fragment;
            this.type = type;
        }
        
        public final void onClick(View v) {
            abd.set_image_size((Context) this.a.getActivity(), this.type);
            this.a.updateImageSizeSelection(this.type);
        }
    }
    
    final class g implements View.OnClickListener {
        
        final afk a;
        final int type;
        
        g(afk fragment, int type) {
            this.a = fragment;
            this.type = type;
        }
        
        public final void onClick(View v) {
            abd.set_cache_limit((Context) this.a.getActivity(), this.type);
            this.a.updateCacheLimitSelection(this.type);
        }
    }
}
