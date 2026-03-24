package android.view;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.ArraySet;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes3.dex */
public class TaskTransitionSpec implements Parcelable {
    public static final Parcelable.Creator<TaskTransitionSpec> CREATOR = new Parcelable.Creator<TaskTransitionSpec>() { // from class: android.view.TaskTransitionSpec.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TaskTransitionSpec createFromParcel(Parcel in) {
            return new TaskTransitionSpec(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TaskTransitionSpec[] newArray(int size) {
            return new TaskTransitionSpec[size];
        }
    };
    public final Set<Integer> animationBoundInsets;
    public final int backgroundColor;

    public TaskTransitionSpec(int backgroundColor, Set<Integer> animationBoundInsets) {
        this.backgroundColor = backgroundColor;
        this.animationBoundInsets = animationBoundInsets;
    }

    public TaskTransitionSpec(Parcel in) {
        this.backgroundColor = in.readInt();
        int animationBoundInsetsSize = in.readInt();
        this.animationBoundInsets = new ArraySet(animationBoundInsetsSize);
        for (int i = 0; i < animationBoundInsetsSize; i++) {
            this.animationBoundInsets.add(Integer.valueOf(in.readInt()));
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeInt(this.backgroundColor);
        dest.writeInt(this.animationBoundInsets.size());
        Iterator<Integer> it = this.animationBoundInsets.iterator();
        while (it.hasNext()) {
            int insetType = it.next().intValue();
            dest.writeInt(insetType);
        }
    }
}
