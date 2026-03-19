package com.bilibili.tv.widget.side;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.LinearLayout;
import com.bilibili.tv.R;
import com.bilibili.tv.widget.CircleImageView;
import com.bilibili.tv.widget.ShadowTextView;

public class SideLeftSelectLinearLayout extends LinearLayout {

    public SideLeftSelectLinearLayout(Context context) {
        super(context);
    }

    public SideLeftSelectLinearLayout(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public SideLeftSelectLinearLayout(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }

    public SideLeftSelectLinearLayout(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr, defStyleRes);
    }

    public void a() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View child = getChildAt(i);
            if (child instanceof ShadowTextView) {
                ShadowTextView textView = (ShadowTextView) child;
                textView.setTextColor(bl.adl.d(R.color.white));
                child.animate().scaleX(1.08f).scaleY(1.08f).setDuration(0).start();
            } else if (child.getId() == R.id.tag_view) {
                child.setVisibility(View.VISIBLE);
            }
        }
        setTag(Boolean.valueOf(false));
        setBackgroundResource(R.drawable.select_left_item_pink);
    }

    public void b() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View child = getChildAt(i);
            if (child instanceof ShadowTextView) {
                ShadowTextView textView = (ShadowTextView) child;
                textView.setTextColor(bl.adl.d(R.color.white_50));
                child.animate().scaleX(1.0f).scaleY(1.0f).setDuration(0).start();
            } else if (child.getId() == R.id.tag_view) {
                child.setVisibility(View.INVISIBLE);
            }
        }
        setBackgroundResource(0);
    }

    public void c() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View child = getChildAt(i);
            if (child.getId() == R.id.tag_view) {
                child.setVisibility(View.INVISIBLE);
            }
        }
        setTag(Boolean.valueOf(true));
        setBackgroundResource(R.drawable.select_left_item_gray);
    }

    @Override
    public void setSelected(boolean selected) {
        if (selected && !isSelected()) {
            a();
            ViewParent parent = getParent();
            if (parent instanceof android.support.v7.widget.RecyclerView) {
                ViewGroup parentGroup = (ViewGroup) parent;
                int childCount = parentGroup.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    View child = parentGroup.getChildAt(i);
                    if (child != this) {
                        child.setSelected(false);
                    }
                }
            }
        } else if (!selected) {
            b();
        }
        super.setSelected(selected);
    }
}
