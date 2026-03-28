package android.content.res;

import oplus.content.res.OplusExtraConfiguration;

public class OplusBaseConfiguration {
    public OplusExtraConfiguration mOplusExtraConfiguration = new OplusExtraConfiguration();

    public OplusExtraConfiguration getOplusExtraConfiguration() {
        if (mOplusExtraConfiguration == null) {
            mOplusExtraConfiguration = new OplusExtraConfiguration();
        }
        return mOplusExtraConfiguration;
    }

    public void setTo(OplusBaseConfiguration other) {
        if (other != null && other.mOplusExtraConfiguration != null) {
            this.mOplusExtraConfiguration.setTo(other.mOplusExtraConfiguration);
        }
    }
}