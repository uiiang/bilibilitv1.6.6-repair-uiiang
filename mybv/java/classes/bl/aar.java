package bl;

import android.view.ViewGroup;
import android.widget.TextView;

import com.bilibili.tv.widget.ScalableImageView;

public class aar {
    private ViewGroup a;
    private TextView b;
    private ScalableImageView c;
    private TextView d;

    public aar() {
    }

    public void a(ViewGroup viewGroup) {
        if (viewGroup != null) {
            this.b = (TextView) viewGroup.findViewById(0x7f08013a);
            if (this.b != null) {
                this.b.setMovementMethod(android.text.method.ScrollingMovementMethod.getInstance());
            }
            this.c = (ScalableImageView) viewGroup.findViewById(0x7f0801bc);
            this.d = (TextView) viewGroup.findViewById(0x7f0801bd);
        }
        this.a = viewGroup;
    }

    public void a(String text) {
        if (this.b != null) {
            this.b.setText(text);
            this.b.setVisibility(0);
        }
    }

    public boolean a() {
        if (this.a != null) {
            return this.a.getVisibility() == 0;
        }
        return false;
    }

    public void b() {
        if (this.a != null) {
            this.a.setVisibility(0);
        }
    }

    public void b(String text) {
        if (this.b != null) {
            this.b.setText(text);
            this.b.setVisibility(0);
        }
    }

    public void c() {
        if (this.a != null) {
            this.a.setVisibility(8);
        }
    }

    public void a(String coverUrl, String pageTitle) {
        if (this.c != null && coverUrl != null) {
            nv.a().a(coverUrl, this.c);
        }
        if (this.d != null) {
            if (pageTitle != null && !pageTitle.isEmpty()) {
                this.d.setText(pageTitle);
                this.d.setVisibility(0);
            } else {
                this.d.setVisibility(8);
            }
        }
    }
}
