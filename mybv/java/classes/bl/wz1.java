package bl;

import android.content.Context;
import android.view.SurfaceView;
import android.view.View;

/* compiled from: BL */
/* loaded from: classes.dex */
public class wz1 extends SurfaceView {
    private int a;
    private int b;

    public wz1(Context context) {
        super(context);
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int videoWidth = wm.a().j();
        int videoHeight = wm.a().k();

        int originalWidth = View.getDefaultSize(videoWidth, widthMeasureSpec);
        int originalHeight = View.getDefaultSize(videoHeight, heightMeasureSpec);

        int width = originalWidth;
        int height = originalHeight;

        if (videoWidth > 0 && videoHeight > 0) {
            int widthMode = MeasureSpec.getMode(widthMeasureSpec);
            int widthSize = MeasureSpec.getSize(widthMeasureSpec);
            int heightMode = MeasureSpec.getMode(heightMeasureSpec);
            int heightSize = MeasureSpec.getSize(heightMeasureSpec);

            if (widthMode == MeasureSpec.EXACTLY && heightMode == MeasureSpec.EXACTLY) {
                if (videoWidth * heightSize < widthSize * videoHeight) {
                    width = (videoWidth * heightSize) / videoHeight;
                    height = heightSize;
                } else if (videoWidth * heightSize > widthSize * videoHeight) {
                    width = widthSize;
                    height = (widthSize * videoHeight) / videoWidth;
                } else {
                    width = widthSize;
                    height = heightSize;
                }
            }
        }

        this.a = width;
        this.b = height;
        setMeasuredDimension(width, height);
        
        // 添加调试日志
        android.util.Log.i("wz1", "SurfaceView测量: videoWidth=" + videoWidth + ", videoHeight=" + videoHeight + 
            ", measuredWidth=" + width + ", measuredHeight=" + height);
    }

    public int getSizeW() {
        return this.a;
    }

    public int getSizeH() {
        return this.b;
    }
}