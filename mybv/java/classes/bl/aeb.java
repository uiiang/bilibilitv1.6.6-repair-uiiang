package bl;

import android.app.Activity;
import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import bl.adc;
import com.bilibili.tv.R;
import com.bilibili.tv.api.area.BiliVideoV2;
import com.bilibili.tv.ui.video.VideoDetailActivity;
import com.bilibili.tv.widget.ScalableImageView;
import kotlin.TypeCastException;

/* compiled from: BL */
/* loaded from: classes.dex */
public final class aeb extends adc.a implements View.OnClickListener {
    public static final b Companion = new b(null);
    private ScalableImageView n;
    private TextView o;
    private TextView p;
    private TextView q;
    private TextView r;
    private TextView s;
    private TextView t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public aeb(View view) {
        super(view);
        bbi.b(view, "itemView");
        this.n = (ScalableImageView) a(view, R.id.img);
        this.o = (TextView) a(view, R.id.title);
        this.p = (TextView) a(view, R.id.up);
        this.q = (TextView) a(view, R.id.play);
        this.r = (TextView) a(view, R.id.danmaku);
        this.s = (TextView) a(view, R.id.duration);
        this.t = (TextView) a(view, R.id.pubdate);
        com.bilibili.tv.ui.video.widget.VideoCardIcons.apply(view.getContext(),
                this.p, this.q, this.r,
                com.bilibili.tv.ui.video.widget.VideoCardIcons.SIZE_WIDE, R.color.white_50);
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.support.v7.widget.RecyclerView.LayoutParams");
        }
        ((RecyclerView.i) layoutParams).width = -1;
        Object context = view.getContext();
        if (context instanceof View.OnLongClickListener) {
            view.setOnLongClickListener((View.OnLongClickListener) context);
        }
        view.setOnClickListener(this);
    }

    public final ScalableImageView z() {
        return this.n;
    }

    public final TextView A() {
        return this.o;
    }

    public final TextView B() {
        return this.p;
    }

    public final TextView C() {
        return this.q;
    }

    public final TextView D() {
        return this.r;
    }

    @Override // bl.adc.a
    public void b(Object obj) {
        if (obj instanceof a) {
            a aVar = (a) obj;
            BiliVideoV2 a2 = aVar.a();
            if (a2 == null) {
                bbi.a();
            }
            if (a2.title != null) {
                this.o.setText(a2.title);
            }
            if (a2.name != null) {
                this.p.setText(a2.name);
            }
            this.q.setText(adh.a(a2.play));
            this.r.setText(adh.a(a2.danmaku));
            com.bilibili.tv.ui.video.widget.VideoCardTexts.bindDuration(this.s, a2.duration, false);
            com.bilibili.tv.ui.video.widget.VideoCardTexts.bindPubDate(this.t, a2.pubdate, null, true);
            com.bilibili.tv.ui.video.widget.VideoCardCoverLoader.load(null, this.n, a2.cover);
            if (aVar.b()) {
                this.a.setTag(R.id.isNeedPx, true);
            } else {
                this.a.setTag(R.id.isNeedPx, false);
            }
            View view = this.a;
            bbi.a((Object) view, "itemView");
            view.setTag(a2);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        bbi.b(view, "v");
        Object tag = view.getTag();
        Context context = view.getContext();
        bbi.a((Object) context, "v.context");
        Activity a2 = adl.a(context);
        if (!(tag instanceof BiliVideoV2) || a2 == null) {
            return;
        }
        BiliVideoV2 biliVideoV2 = (BiliVideoV2) tag;
        String str = biliVideoV2.jumpTo;
        if (TextUtils.equals("av", str)) {
            adl.a(biliVideoV2.videoId(), a2);
        } else if (TextUtils.equals("bangumi", str)) {
            a2.startActivity(VideoDetailActivity.Companion.a(a2, String.valueOf(biliVideoV2.videoId())));
        }
    }

    /* compiled from: BL */
    /* loaded from: classes.dex */
    public static final class a {
        private BiliVideoV2 a;
        private boolean b;

        public final BiliVideoV2 a() {
            return this.a;
        }

        public final void a(BiliVideoV2 biliVideoV2) {
            this.a = biliVideoV2;
        }

        public final void a(boolean z) {
            this.b = z;
        }

        public final boolean b() {
            return this.b;
        }
    }

    /* compiled from: BL */
    /* loaded from: classes.dex */
    public static final class b {
        private b() {
        }

        public /* synthetic */ b(bbg bbgVar) {
            this();
        }

        public final aeb a(ViewGroup viewGroup) {
            bbi.b(viewGroup, "parent");
            View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.recycler_view_item_video_info, viewGroup, false);
            bbi.a((Object) inflate, "view");
            return new aeb(inflate);
        }
    }
}