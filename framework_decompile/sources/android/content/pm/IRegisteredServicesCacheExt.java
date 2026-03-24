package android.content.pm;

import java.util.List;
import java.util.function.Predicate;

/* loaded from: classes.dex */
public interface IRegisteredServicesCacheExt {
    default boolean adjustGenerateServicesMap(String simpleName, int[] changedUids, List<ResolveInfo> resolveInfos, Predicate<Integer> predicate) {
        return false;
    }
}
