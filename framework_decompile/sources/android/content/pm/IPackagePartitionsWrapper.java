package android.content.pm;

import android.content.pm.PackagePartitions;
import java.io.File;

/* loaded from: classes.dex */
public interface IPackagePartitionsWrapper {
    default IPackagePartitionsExt getExtImpl() {
        return new IPackagePartitionsExt() { // from class: android.content.pm.IPackagePartitionsWrapper.1
        };
    }

    default PackagePartitions.SystemPartition newSystemPartitionInstance(File folder, int type, String name, boolean containsPrivApp, boolean containsOverlay) {
        return null;
    }
}
