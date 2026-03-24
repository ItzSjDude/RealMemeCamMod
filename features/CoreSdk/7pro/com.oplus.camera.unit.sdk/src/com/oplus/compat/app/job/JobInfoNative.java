package com.oplus.compat.app.job;

import android.app.job.IJobInfoExt;
import android.app.job.JobInfo;
import android.util.Log;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Oem;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.ocs.camera.common.util.ApsConstant;
import com.oplus.utils.reflect.MethodName;
import com.oplus.utils.reflect.RefBoolean;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefInt;
import com.oplus.utils.reflect.RefMethod;
import com.oplus.utils.reflect.RefObject;
/* loaded from: classes.dex */
public class JobInfoNative {
    @Oem
    @RequiresApi(api = 30)
    public static int SCENE_MODE_GAME = 0;
    @Oem
    @RequiresApi(api = 30)
    public static int SCENE_MODE_VIDEO = 0;
    @Oem
    @RequiresApi(api = 30)
    public static int SCENE_MODE_VIDEO_CALL = 0;
    private static final String TAG = "JobInfoNative";
    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static int TYPE_PROTECT_FORE_FRAME;
    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static int TYPE_PROTECT_FORE_NET;

    /* JADX INFO: Access modifiers changed from: private */
    @OplusCompatibleMethod
    public static Object getHasCpuConstraintForQ(JobInfo.Builder builder) {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @OplusCompatibleMethod
    public static Object getOplusExtraStrForQ(JobInfo.Builder builder) {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @OplusCompatibleMethod
    public static Object getOplusJobForQ(JobInfo.Builder builder) {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @OplusCompatibleMethod
    public static Object getRequiresBattIdleForQ(JobInfo.Builder builder) {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @OplusCompatibleMethod
    public static Object getRequiresProtectForeForQ(JobInfo.Builder builder) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object initTypeProtectForeFrame() {
        return null;
    }

    @OplusCompatibleMethod
    private static Object initTypeProtectForeNet() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @OplusCompatibleMethod
    public static void setHasCpuConstraintForQ(JobInfo.Builder builder, boolean z) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    @OplusCompatibleMethod
    public static void setHasTemperatureConstraintForQ(JobInfo.Builder builder, boolean z) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    @OplusCompatibleMethod
    public static void setOplusExtraStrForQ(JobInfo.Builder builder, String str) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    @OplusCompatibleMethod
    public static void setOplusJobForQ(JobInfo.Builder builder, boolean z) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    @OplusCompatibleMethod
    public static void setRequiresBattIdleForQ(JobInfo.Builder builder, boolean z, int i) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    @OplusCompatibleMethod
    public static void setRequiresProtectForeForQ(JobInfo.Builder builder, boolean z) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    @OplusCompatibleMethod
    public static void setRequiresProtectForeForQ(JobInfo.Builder builder, boolean z, int i) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    @OplusCompatibleMethod
    public static void setRequiresProtectSceneForQ(JobInfo.Builder builder, boolean z, int i) {
    }

    static {
        try {
            if (VersionUtils.isS()) {
                TYPE_PROTECT_FORE_NET = 1;
                TYPE_PROTECT_FORE_FRAME = 0;
                SCENE_MODE_VIDEO = 1;
                SCENE_MODE_VIDEO_CALL = 2;
                SCENE_MODE_GAME = 4;
            } else if (!VersionUtils.isR()) {
                if (VersionUtils.isQ()) {
                    TYPE_PROTECT_FORE_NET = ((Integer) initTypeProtectForeNet()).intValue();
                    TYPE_PROTECT_FORE_FRAME = ((Integer) initTypeProtectForeFrame()).intValue();
                }
            } else {
                TYPE_PROTECT_FORE_NET = RefOplusBaseJobInfoInfo.TYPE_PROTECT_FORE_NET.get(null);
                TYPE_PROTECT_FORE_FRAME = RefOplusBaseJobInfoInfo.TYPE_PROTECT_FORE_FRAME.get(null);
                SCENE_MODE_VIDEO = RefOplusBaseJobInfoInfo.SCENE_MODE_VIDEO.get(null);
                SCENE_MODE_VIDEO_CALL = RefOplusBaseJobInfoInfo.SCENE_MODE_VIDEO_CALL.get(null);
                SCENE_MODE_GAME = RefOplusBaseJobInfoInfo.SCENE_MODE_GAME.get(null);
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    private JobInfoNative() {
    }

    /* loaded from: classes.dex */
    private static class RefJobInfoBuilderInfo {
        private static RefObject<IJobInfoExt.JobBuilderExt> mBuilderExt;
        private static RefMethod<IJobInfoExt.JobBuilderExt> makeBuilderExt;

        private RefJobInfoBuilderInfo() {
        }

        static {
            if (VersionUtils.isS()) {
                RefClass.load(RefJobInfoBuilderInfo.class, JobInfo.Builder.class);
            }
        }
    }

    /* loaded from: classes.dex */
    private static class RefBuilderExtInfo {
        private static RefBoolean mHasCpuConstraint;
        private static RefBoolean mHasProtectSceneConstraint;
        private static RefBoolean mHasTemperatureConstraint;
        private static RefBoolean mIsOplusJob;
        private static RefObject<String> mOplusExtraStr;
        private static RefInt mProtectForeType;
        private static RefInt mProtectScene;
        private static RefBoolean mRequiresBattIdle;
        private static RefBoolean mRequiresProtectFore;
        @MethodName(name = "setRequiresBattIdle", params = {boolean.class, int.class})
        private static RefMethod<Void> setRequiresBattIdle;

        private RefBuilderExtInfo() {
        }

        static {
            if (VersionUtils.isS()) {
                RefClass.load(RefBuilderExtInfo.class, "android.app.job.IJobInfoExt$JobBuilderExt");
            }
        }
    }

    /* loaded from: classes.dex */
    private static class ReflectInfo {
        private static RefBoolean mHasCpuConstraint;
        private static RefBoolean mHasProtectSceneConstraint;
        private static RefBoolean mHasTemperatureConstraint;
        private static RefBoolean mIsOplusJob;
        private static RefObject<String> mOplusExtraStr;
        private static RefInt mProtectForeType;
        private static RefInt mProtectScene;
        private static RefBoolean mRequiresBattIdle;
        private static RefBoolean mRequiresProtectFore;
        @MethodName(name = "setRequiresBattIdle", params = {boolean.class, int.class})
        private static RefMethod<Void> setRequiresBattIdle;

        private ReflectInfo() {
        }

        static {
            if (VersionUtils.isR()) {
                RefClass.load(ReflectInfo.class, "android.app.job.OplusBaseJobInfo$BaseBuilder");
            } else if (VersionUtils.isN_MR1()) {
                RefClass.load(ReflectInfo.class, JobInfo.Builder.class);
            }
        }
    }

    /* loaded from: classes.dex */
    private static class RefOplusBaseJobInfoInfo {
        private static RefInt SCENE_MODE_GAME;
        private static RefInt SCENE_MODE_VIDEO;
        private static RefInt SCENE_MODE_VIDEO_CALL;
        private static RefInt TYPE_PROTECT_FORE_FRAME;
        private static RefInt TYPE_PROTECT_FORE_NET;

        private RefOplusBaseJobInfoInfo() {
        }

        static {
            RefClass.load(RefOplusBaseJobInfoInfo.class, "android.app.job.OplusBaseJobInfo");
        }
    }

    /* loaded from: classes.dex */
    public static final class BuilderNative {
        private BuilderNative() {
        }

        @Oem
        @RequiresApi(api = 25)
        public static void setRequiresBattIdle(JobInfo.Builder builder, boolean z, int i) throws UnSupportedApiVersionException {
            if (VersionUtils.isS()) {
                if (builder == null) {
                    return;
                }
                ((IJobInfoExt.JobBuilderExt) RefJobInfoBuilderInfo.makeBuilderExt.call(builder, new Object[0])).setRequiresBattIdle(z, i);
            } else if (VersionUtils.isR()) {
                ReflectInfo.setRequiresBattIdle.call(builder, Boolean.valueOf(z), Integer.valueOf(i));
            } else if (VersionUtils.isQ()) {
                JobInfoNative.setRequiresBattIdleForQ(builder, z, i);
            } else if (VersionUtils.isN_MR1()) {
                ReflectInfo.setRequiresBattIdle.call(builder, Boolean.valueOf(z), Integer.valueOf(i));
            } else {
                throw new UnSupportedApiVersionException("not supported before N_MR1");
            }
        }

        @Oem
        @RequiresApi(api = 25)
        public static boolean getRequiresBattIdle(JobInfo.Builder builder) throws UnSupportedApiVersionException {
            IJobInfoExt.JobBuilderExt jobBuilderExt;
            if (VersionUtils.isS()) {
                return (builder == null || (jobBuilderExt = (IJobInfoExt.JobBuilderExt) RefJobInfoBuilderInfo.mBuilderExt.get(builder)) == null || !jobBuilderExt.mRequiresBattIdle) ? false : true;
            } else if (VersionUtils.isR()) {
                return ReflectInfo.mRequiresBattIdle.get(builder);
            } else {
                if (VersionUtils.isQ()) {
                    return ((Boolean) JobInfoNative.getRequiresBattIdleForQ(builder)).booleanValue();
                }
                if (VersionUtils.isN_MR1()) {
                    return ReflectInfo.mRequiresBattIdle.get(builder);
                }
                throw new UnSupportedApiVersionException("not supported before N_MR1");
            }
        }

        @Oem
        @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
        public static void setOplusJob(JobInfo.Builder builder, boolean z) throws UnSupportedApiVersionException {
            if (VersionUtils.isS()) {
                if (builder == null) {
                    return;
                }
                ((IJobInfoExt.JobBuilderExt) RefJobInfoBuilderInfo.makeBuilderExt.call(builder, new Object[0])).mIsOplusJob = z;
            } else if (VersionUtils.isR()) {
                ReflectInfo.mIsOplusJob.set(builder, z);
            } else if (VersionUtils.isQ()) {
                JobInfoNative.setOplusJobForQ(builder, z);
            } else {
                throw new UnSupportedApiVersionException("not supported before Q");
            }
        }

        @Oem
        @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
        public static boolean getOplusJob(JobInfo.Builder builder) throws UnSupportedApiVersionException {
            IJobInfoExt.JobBuilderExt jobBuilderExt;
            if (VersionUtils.isS()) {
                return (builder == null || (jobBuilderExt = (IJobInfoExt.JobBuilderExt) RefJobInfoBuilderInfo.mBuilderExt.get(builder)) == null || !jobBuilderExt.mIsOplusJob) ? false : true;
            } else if (VersionUtils.isR()) {
                return ReflectInfo.mIsOplusJob.get(builder);
            } else {
                if (VersionUtils.isQ()) {
                    return ((Boolean) JobInfoNative.getOplusJobForQ(builder)).booleanValue();
                }
                throw new UnSupportedApiVersionException("not supported before Q");
            }
        }

        @Oem
        @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
        public static void setRequiresProtectFore(JobInfo.Builder builder, boolean z) throws UnSupportedApiVersionException {
            if (VersionUtils.isS()) {
                if (builder == null) {
                    return;
                }
                ((IJobInfoExt.JobBuilderExt) RefJobInfoBuilderInfo.makeBuilderExt.call(builder, new Object[0])).mRequiresProtectFore = z;
            } else if (VersionUtils.isR()) {
                ReflectInfo.mRequiresProtectFore.set(builder, z);
            } else if (VersionUtils.isQ()) {
                JobInfoNative.setRequiresProtectForeForQ(builder, z);
            } else {
                throw new UnSupportedApiVersionException("not supported before Q");
            }
        }

        @Oem
        @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
        public static void setRequiresProtectFore(JobInfo.Builder builder, boolean z, int i) throws UnSupportedApiVersionException {
            if (VersionUtils.isS()) {
                if (builder == null) {
                    return;
                }
                IJobInfoExt.JobBuilderExt jobBuilderExt = (IJobInfoExt.JobBuilderExt) RefJobInfoBuilderInfo.makeBuilderExt.call(builder, new Object[0]);
                jobBuilderExt.mRequiresProtectFore = z;
                jobBuilderExt.mProtectForeType = i;
            } else if (VersionUtils.isR()) {
                ReflectInfo.mRequiresProtectFore.set(builder, z);
                ReflectInfo.mProtectForeType.set(builder, i);
            } else if (VersionUtils.isQ()) {
                JobInfoNative.setRequiresProtectForeForQ(builder, z, i);
            } else {
                throw new UnSupportedApiVersionException("not supported before Q");
            }
        }

        @Oem
        @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
        public static boolean getRequiresProtectFore(JobInfo.Builder builder) throws UnSupportedApiVersionException {
            IJobInfoExt.JobBuilderExt jobBuilderExt;
            if (VersionUtils.isS()) {
                return (builder == null || (jobBuilderExt = (IJobInfoExt.JobBuilderExt) RefJobInfoBuilderInfo.mBuilderExt.get(builder)) == null || !jobBuilderExt.mRequiresProtectFore) ? false : true;
            } else if (VersionUtils.isR()) {
                return ReflectInfo.mRequiresProtectFore.get(builder);
            } else {
                if (VersionUtils.isQ()) {
                    return ((Boolean) JobInfoNative.getRequiresProtectForeForQ(builder)).booleanValue();
                }
                throw new UnSupportedApiVersionException("not supported before Q");
            }
        }

        @Oem
        @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
        public static void setHasCpuConstraint(JobInfo.Builder builder, boolean z) throws UnSupportedApiVersionException {
            if (VersionUtils.isS()) {
                if (builder == null) {
                    return;
                }
                ((IJobInfoExt.JobBuilderExt) RefJobInfoBuilderInfo.makeBuilderExt.call(builder, new Object[0])).mHasCpuConstraint = z;
            } else if (VersionUtils.isR()) {
                ReflectInfo.mHasCpuConstraint.set(builder, z);
            } else if (VersionUtils.isQ()) {
                JobInfoNative.setHasCpuConstraintForQ(builder, z);
            } else {
                throw new UnSupportedApiVersionException("not supported before Q");
            }
        }

        @Oem
        @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
        public static boolean getHasCpuConstraint(JobInfo.Builder builder) throws UnSupportedApiVersionException {
            IJobInfoExt.JobBuilderExt jobBuilderExt;
            if (VersionUtils.isS()) {
                return (builder == null || (jobBuilderExt = (IJobInfoExt.JobBuilderExt) RefJobInfoBuilderInfo.mBuilderExt.get(builder)) == null || !jobBuilderExt.mHasCpuConstraint) ? false : true;
            } else if (VersionUtils.isR()) {
                return ReflectInfo.mHasCpuConstraint.get(builder);
            } else {
                if (VersionUtils.isQ()) {
                    return ((Boolean) JobInfoNative.getHasCpuConstraintForQ(builder)).booleanValue();
                }
                throw new UnSupportedApiVersionException("not supported before Q");
            }
        }

        @Oem
        @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
        public static void setOplusExtraStr(JobInfo.Builder builder, String str) throws UnSupportedApiVersionException {
            if (VersionUtils.isS()) {
                if (builder == null) {
                    return;
                }
                ((IJobInfoExt.JobBuilderExt) RefJobInfoBuilderInfo.makeBuilderExt.call(builder, new Object[0])).mOplusExtraStr = str;
            } else if (VersionUtils.isR()) {
                ReflectInfo.mOplusExtraStr.set(builder, str);
            } else if (VersionUtils.isQ()) {
                JobInfoNative.setOplusExtraStrForQ(builder, str);
            } else {
                throw new UnSupportedApiVersionException("not supported before Q");
            }
        }

        @Oem
        @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
        public static String getOplusExtraStr(JobInfo.Builder builder) throws UnSupportedApiVersionException {
            IJobInfoExt.JobBuilderExt jobBuilderExt;
            if (VersionUtils.isS()) {
                if (builder == null || (jobBuilderExt = (IJobInfoExt.JobBuilderExt) RefJobInfoBuilderInfo.mBuilderExt.get(builder)) == null) {
                    return null;
                }
                return jobBuilderExt.mOplusExtraStr;
            } else if (VersionUtils.isR()) {
                return (String) ReflectInfo.mOplusExtraStr.get(builder);
            } else {
                if (VersionUtils.isQ()) {
                    return (String) JobInfoNative.getOplusExtraStrForQ(builder);
                }
                throw new UnSupportedApiVersionException("not supported before Q");
            }
        }

        @Oem
        @RequiresApi(api = 30)
        public static void setHasTemperatureConstraint(JobInfo.Builder builder, boolean z) throws UnSupportedApiVersionException {
            if (VersionUtils.isS()) {
                if (builder == null) {
                    return;
                }
                ((IJobInfoExt.JobBuilderExt) RefJobInfoBuilderInfo.makeBuilderExt.call(builder, new Object[0])).mHasTemperatureConstraint = z;
            } else if (VersionUtils.isR()) {
                ReflectInfo.mHasTemperatureConstraint.set(builder, z);
            } else if (VersionUtils.isQ()) {
                JobInfoNative.setHasTemperatureConstraintForQ(builder, z);
            } else {
                throw new UnSupportedApiVersionException("not supported before R");
            }
        }

        @Oem
        @RequiresApi(api = 30)
        public static void setRequiresProtectScene(JobInfo.Builder builder, boolean z, int i) throws UnSupportedApiVersionException {
            if (VersionUtils.isS()) {
                if (builder == null) {
                    return;
                }
                IJobInfoExt.JobBuilderExt jobBuilderExt = (IJobInfoExt.JobBuilderExt) RefJobInfoBuilderInfo.makeBuilderExt.call(builder, new Object[0]);
                jobBuilderExt.mHasProtectSceneConstraint = z;
                jobBuilderExt.mProtectScene = i;
            } else if (VersionUtils.isR()) {
                ReflectInfo.mHasProtectSceneConstraint.set(builder, z);
                ReflectInfo.mProtectScene.set(builder, i);
            } else if (VersionUtils.isQ()) {
                JobInfoNative.setRequiresProtectSceneForQ(builder, z, i);
            } else {
                throw new UnSupportedApiVersionException("not supported before R");
            }
        }
    }
}
