package com.oplus.ocs.camera.producer.device;

import android.hardware.camera2.CaptureRequest;
import android.view.Surface;
import androidx.annotation.NonNull;
import java.util.Optional;
import java.util.function.Consumer;
import java.util.function.Function;
/* loaded from: classes.dex */
public class CaptureRequestProxy {
    private static final boolean DEBUG = false;
    private static final String TAG = "CaptureRequestProxy";

    /* loaded from: classes.dex */
    public static final class Builder {
        private CaptureRequest.Builder mBuilder;

        public Builder(CaptureRequest.Builder builder) {
            this.mBuilder = builder;
        }

        public <T> boolean setParameter(@NonNull final CaptureRequest.Key<T> key, final T t) {
            try {
                Optional.ofNullable(this.mBuilder).ifPresent(new Consumer() { // from class: com.oplus.ocs.camera.producer.device.CaptureRequestProxy$Builder$$ExternalSyntheticLambda0
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ((CaptureRequest.Builder) obj).set(key, t);
                    }
                });
                return true;
            } catch (Exception unused) {
                return false;
            }
        }

        public <T> T getParameter(@NonNull final CaptureRequest.Key<T> key) {
            return (T) Optional.ofNullable(this.mBuilder).map(new Function() { // from class: com.oplus.ocs.camera.producer.device.CaptureRequestProxy$Builder$$ExternalSyntheticLambda2
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    Object obj2;
                    obj2 = ((CaptureRequest.Builder) obj).get(key);
                    return obj2;
                }
            }).orElse(null);
        }

        public void addTarget(@NonNull final Surface surface) {
            Optional.ofNullable(this.mBuilder).ifPresent(new Consumer() { // from class: com.oplus.ocs.camera.producer.device.CaptureRequestProxy$Builder$$ExternalSyntheticLambda1
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((CaptureRequest.Builder) obj).addTarget(surface);
                }
            });
        }

        public void removeTarget(@NonNull final Surface surface) {
            Optional.ofNullable(this.mBuilder).ifPresent(new Consumer() { // from class: com.oplus.ocs.camera.producer.device.CaptureRequestProxy$Builder$$ExternalSyntheticLambda5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((CaptureRequest.Builder) obj).removeTarget(surface);
                }
            });
        }

        public void setTag(@NonNull final Object obj) {
            Optional.ofNullable(this.mBuilder).ifPresent(new Consumer() { // from class: com.oplus.ocs.camera.producer.device.CaptureRequestProxy$Builder$$ExternalSyntheticLambda3
                @Override // java.util.function.Consumer
                public final void accept(Object obj2) {
                    ((CaptureRequest.Builder) obj2).setTag(obj);
                }
            });
        }

        public CaptureRequest build() {
            return (CaptureRequest) Optional.ofNullable(this.mBuilder).map(new Function() { // from class: com.oplus.ocs.camera.producer.device.CaptureRequestProxy$Builder$$ExternalSyntheticLambda4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    CaptureRequest build;
                    build = ((CaptureRequest.Builder) obj).build();
                    return build;
                }
            }).orElse(null);
        }
    }
}
