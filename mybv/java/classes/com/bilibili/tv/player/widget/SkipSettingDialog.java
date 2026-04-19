package com.bilibili.tv.player.widget;

import android.app.Dialog;
import android.content.Context;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.bilibili.tv.R;
import com.bilibili.tv.player.basic.context.ResolveResourceParams;
import com.bilibili.tv.widget.DrawLinearLayout;
import bl.abd;

public class SkipSettingDialog extends Dialog {

    private LinearLayout introTimeLayout;
    private LinearLayout outroTimeLayout;
    private TextView introTimeDisplay;
    private TextView outroTimeDisplay;
    private DrawLinearLayout btnSaveLayout;
    private DrawLinearLayout btnCancelLayout;

    private long introTimeMs = 0;
    private long outroTimeMs = 0;
    private static final int STEP_SHORT = 5000;
    private static final int STEP_LONG = 30000;

    private ResolveResourceParams params;
    private long currentPosition;
    private OnSaveListener onSaveListener;
    private OnPositionProvider onPositionProvider;

    private Handler longPressHandler;
    private boolean isLongPress = false;
    private int currentDirection = 0;
    private static final int MSG_LONG_PRESS = 1;
    private static final int LONG_PRESS_DELAY = 500;

    public interface OnSaveListener {
        void onSave(long intro, long outro);
    }

    public interface OnPositionProvider {
        long getCurrentPosition();
    }

    public SkipSettingDialog(Context context, ResolveResourceParams params, long currentPosition) {
        super(context);
        this.params = params;
        this.currentPosition = currentPosition;
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(Window.FEATURE_NO_TITLE);

        setContentView(R.layout.dialog_skip_setting);

        introTimeLayout = (LinearLayout) findViewById(R.id.intro_time);
        outroTimeLayout = (LinearLayout) findViewById(R.id.outro_time);
        introTimeDisplay = (TextView) findViewById(R.id.intro_time_display);
        outroTimeDisplay = (TextView) findViewById(R.id.outro_time_display);
        btnSaveLayout = (DrawLinearLayout) findViewById(R.id.btn_save_skip_layout);
        btnCancelLayout = (DrawLinearLayout) findViewById(R.id.btn_cancel_skip_layout);

        initLongPressHandler();
        setupFocusEffect();
        setupTimePickers();
        loadExistingSettings();

        if (btnSaveLayout != null) {
            btnSaveLayout.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    saveAndClose();
                }
            });
        }
        if (btnCancelLayout != null) {
            btnCancelLayout.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    clearAndClose();
                }
            });
        }

        introTimeLayout.requestFocus();
    }

    private void initLongPressHandler() {
        longPressHandler = new Handler(new Handler.Callback() {
            @Override
            public boolean handleMessage(Message msg) {
                if (msg.what == MSG_LONG_PRESS) {
                    if (isLongPress) {
                        if (currentDirection == -1) {
                            adjustIntroTime(-STEP_LONG);
                        } else if (currentDirection == 1) {
                            adjustIntroTime(STEP_LONG);
                        } else if (currentDirection == -2) {
                            adjustOutroTime(-STEP_LONG);
                        } else if (currentDirection == 2) {
                            adjustOutroTime(STEP_LONG);
                        }
                        longPressHandler.sendEmptyMessageDelayed(MSG_LONG_PRESS, 100);
                    }
                    return true;
                }
                return false;
            }
        });
    }

    private void setupFocusEffect() {
        if (btnSaveLayout != null) {
            btnSaveLayout.setUpDrawable(R.drawable.shadow_red_rect);
            btnSaveLayout.setOnFocusChangeListener(new View.OnFocusChangeListener() {
                @Override
                public void onFocusChange(View v, boolean hasFocus) {
                    btnSaveLayout.setUpEnabled(hasFocus);
                }
            });
        }
        if (btnCancelLayout != null) {
            btnCancelLayout.setUpDrawable(R.drawable.shadow_red_rect);
            btnCancelLayout.setOnFocusChangeListener(new View.OnFocusChangeListener() {
                @Override
                public void onFocusChange(View v, boolean hasFocus) {
                    btnCancelLayout.setUpEnabled(hasFocus);
                }
            });
        }

        final int normalBgColor = 0xFF242424;
        final int focusBgColor = 0x33FB7299;

        introTimeLayout.setOnFocusChangeListener(new View.OnFocusChangeListener() {
            @Override
            public void onFocusChange(View v, boolean hasFocus) {
                v.setBackgroundColor(hasFocus ? focusBgColor : normalBgColor);
            }
        });

        outroTimeLayout.setOnFocusChangeListener(new View.OnFocusChangeListener() {
            @Override
            public void onFocusChange(View v, boolean hasFocus) {
                v.setBackgroundColor(hasFocus ? focusBgColor : normalBgColor);
            }
        });
    }

    private void setupTimePickers() {
        introTimeLayout.setOnKeyListener(new View.OnKeyListener() {
            @Override
            public boolean onKey(View v, int keyCode, KeyEvent event) {
                if (event.getAction() == KeyEvent.ACTION_DOWN) {
                    if (keyCode == KeyEvent.KEYCODE_DPAD_LEFT) {
                        currentDirection = -1;
                        if (!isLongPress) {
                            isLongPress = true;
                            adjustIntroTime(-STEP_SHORT);
                            longPressHandler.sendEmptyMessageDelayed(MSG_LONG_PRESS, LONG_PRESS_DELAY);
                        }
                        return true;
                    } else if (keyCode == KeyEvent.KEYCODE_DPAD_RIGHT) {
                        currentDirection = 1;
                        if (!isLongPress) {
                            isLongPress = true;
                            adjustIntroTime(STEP_SHORT);
                            longPressHandler.sendEmptyMessageDelayed(MSG_LONG_PRESS, LONG_PRESS_DELAY);
                        }
                        return true;
                    } else if (keyCode == KeyEvent.KEYCODE_DPAD_CENTER || keyCode == KeyEvent.KEYCODE_ENTER) {
                        if (onPositionProvider != null) {
                            setIntroTime(onPositionProvider.getCurrentPosition());
                        } else {
                            setIntroTime(currentPosition);
                        }
                        return true;
                    }
                } else if (event.getAction() == KeyEvent.ACTION_UP) {
                    if (keyCode == KeyEvent.KEYCODE_DPAD_LEFT || keyCode == KeyEvent.KEYCODE_DPAD_RIGHT) {
                        isLongPress = false;
                        currentDirection = 0;
                        longPressHandler.removeMessages(MSG_LONG_PRESS);
                        return true;
                    }
                }
                return false;
            }
        });

        outroTimeLayout.setOnKeyListener(new View.OnKeyListener() {
            @Override
            public boolean onKey(View v, int keyCode, KeyEvent event) {
                if (event.getAction() == KeyEvent.ACTION_DOWN) {
                    if (keyCode == KeyEvent.KEYCODE_DPAD_LEFT) {
                        currentDirection = -2;
                        if (!isLongPress) {
                            isLongPress = true;
                            adjustOutroTime(-STEP_SHORT);
                            longPressHandler.sendEmptyMessageDelayed(MSG_LONG_PRESS, LONG_PRESS_DELAY);
                        }
                        return true;
                    } else if (keyCode == KeyEvent.KEYCODE_DPAD_RIGHT) {
                        currentDirection = 2;
                        if (!isLongPress) {
                            isLongPress = true;
                            adjustOutroTime(STEP_SHORT);
                            longPressHandler.sendEmptyMessageDelayed(MSG_LONG_PRESS, LONG_PRESS_DELAY);
                        }
                        return true;
                    } else if (keyCode == KeyEvent.KEYCODE_DPAD_CENTER || keyCode == KeyEvent.KEYCODE_ENTER) {
                        if (onPositionProvider != null) {
                            setOutroTime(onPositionProvider.getCurrentPosition());
                        } else {
                            setOutroTime(currentPosition);
                        }
                        return true;
                    }
                } else if (event.getAction() == KeyEvent.ACTION_UP) {
                    if (keyCode == KeyEvent.KEYCODE_DPAD_LEFT || keyCode == KeyEvent.KEYCODE_DPAD_RIGHT) {
                        isLongPress = false;
                        currentDirection = 0;
                        longPressHandler.removeMessages(MSG_LONG_PRESS);
                        return true;
                    }
                }
                return false;
            }
        });
    }

    private void adjustIntroTime(int deltaMs) {
        introTimeMs += deltaMs;
        if (introTimeMs < 0) introTimeMs = 0;
        long maxTime = getMaxTimeMs();
        if (introTimeMs > maxTime) introTimeMs = maxTime;
        updateIntroDisplay();
    }

    private void adjustOutroTime(int deltaMs) {
        outroTimeMs += deltaMs;
        if (outroTimeMs < 0) outroTimeMs = 0;
        long maxTime = getMaxTimeMs();
        if (outroTimeMs > maxTime) outroTimeMs = maxTime;
        updateOutroDisplay();
    }

    private void setIntroTime(long ms) {
        long maxTime = getMaxTimeMs();
        introTimeMs = Math.max(0, Math.min(ms, maxTime));
        updateIntroDisplay();
    }

    private void setOutroTime(long ms) {
        long maxTime = getMaxTimeMs();
        outroTimeMs = Math.max(0, Math.min(ms, maxTime));
        updateOutroDisplay();
    }

    private long getMaxTimeMs() {
        if (params != null && params.mDuration > 0) {
            return params.mDuration * 1000L;
        }
        return 23 * 3600 * 1000 + 59 * 60 * 1000 + 59 * 1000;
    }

    private void updateIntroDisplay() {
        introTimeDisplay.setText(formatTime(introTimeMs));
    }

    private void updateOutroDisplay() {
        outroTimeDisplay.setText(formatTime(outroTimeMs));
    }

    private String formatTime(long ms) {
        long totalSeconds = ms / 1000;
        long hours = totalSeconds / 3600;
        long minutes = (totalSeconds % 3600) / 60;
        long seconds = totalSeconds % 60;
        return String.format("%02d:%02d:%02d", hours, minutes, seconds);
    }

    private void loadExistingSettings() {
        if (params == null) {
            setIntroTime(0);
            setOutroTime(0);
            return;
        }

        long[] skipTime = null;

        if (!android.text.TextUtils.isEmpty(params.mListKey)) {
            skipTime = abd.getSkipTime(getContext(), "skip_list_" + params.mListKey);
        }

        if (skipTime == null) {
            skipTime = abd.getSkipTime(getContext(), abd.getVideoSkipKey(params.mAvid));
        }

        if (skipTime != null) {
            setIntroTime(skipTime[0]);
            setOutroTime(skipTime[1]);
        } else {
            setIntroTime(0);
            setOutroTime(0);
        }
    }

    private void saveAndClose() {
        if (params != null) {
            if (!android.text.TextUtils.isEmpty(params.mListKey)) {
                abd.setSkipTime(getContext(), "skip_list_" + params.mListKey, introTimeMs, outroTimeMs);
                abd.clearSkipTime(getContext(), abd.getVideoSkipKey(params.mAvid));
            } else {
                abd.setSkipTime(getContext(), abd.getVideoSkipKey(params.mAvid), introTimeMs, outroTimeMs);
            }
        }

        if (onSaveListener != null) {
            onSaveListener.onSave(introTimeMs, outroTimeMs);
        }

        Toast.makeText(getContext(), R.string.skip_saved, Toast.LENGTH_SHORT).show();
        dismiss();
    }

    private void clearAndClose() {
        introTimeMs = 0;
        outroTimeMs = 0;

        if (params != null) {
            if (!android.text.TextUtils.isEmpty(params.mListKey)) {
                abd.clearSkipTime(getContext(), "skip_list_" + params.mListKey);
            }
            abd.clearSkipTime(getContext(), abd.getVideoSkipKey(params.mAvid));
        }

        if (onSaveListener != null) {
            onSaveListener.onSave(0, 0);
        }

        Toast.makeText(getContext(), R.string.skip_cleared, Toast.LENGTH_SHORT).show();
        dismiss();
    }

    public void setOnSaveListener(OnSaveListener listener) {
        this.onSaveListener = listener;
    }

    public void setOnPositionProvider(OnPositionProvider provider) {
        this.onPositionProvider = provider;
    }

    public void setCurrentPosition(long position) {
        this.currentPosition = position;
    }
}
