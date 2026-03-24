package android.content.pm;

import android.content.pm.PackagePartitions;
import java.util.ArrayList;
import java.util.function.Function;

/* loaded from: classes.dex */
public interface IPackagePartitionsExt {
    default <T> void adjustGetOrderedPartitions(Function<PackagePartitions.SystemPartition, T> producer, ArrayList<T> originList) {
    }
}
