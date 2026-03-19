package bl;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.bilibili.tv.R;
import com.bilibili.tv.widget.CircleImageView;

public class agf extends adv {
    public TextView n;
    public CircleImageView o;

    public agf(View itemView) {
        super(itemView);
        this.n = (TextView) a(itemView, R.id.title);
        this.o = (CircleImageView) a(itemView, R.id.face);
    }

    public static agf a(ViewGroup parent) {
        View view = android.view.LayoutInflater.from(parent.getContext()).inflate(R.layout.recycler_view_item_sider_left_title, parent, false);
        return new agf(view);
    }

    public CircleImageView A() {
        return this.o;
    }
}
