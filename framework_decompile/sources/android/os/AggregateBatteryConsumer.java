package android.os;

import android.content.Context;
import android.os.BatteryConsumer;
import android.os.BatteryUsageStats;
import android.util.TypedXmlPullParser;
import android.util.TypedXmlSerializer;
import java.io.IOException;
import java.io.PrintWriter;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes3.dex */
public final class AggregateBatteryConsumer extends BatteryConsumer {
    static final int COLUMN_COUNT = 3;
    static final int COLUMN_INDEX_CONSUMED_POWER = 2;
    static final int COLUMN_INDEX_SCOPE = 1;
    static final int CONSUMER_TYPE_AGGREGATE = 0;

    AggregateBatteryConsumer(BatteryConsumer.BatteryConsumerData data) {
        super(data);
    }

    private AggregateBatteryConsumer(Builder builder) {
        super(builder.mData, builder.mPowerComponentsBuilder.build());
    }

    int getScope() {
        return this.mData.getInt(1);
    }

    @Override // android.os.BatteryConsumer
    public void dump(PrintWriter pw, boolean skipEmptyComponents) {
        this.mPowerComponents.dump(pw, skipEmptyComponents);
    }

    @Override // android.os.BatteryConsumer
    public double getConsumedPower() {
        return this.mData.getDouble(2);
    }

    void writeToXml(TypedXmlSerializer serializer, int scope) throws IOException {
        serializer.startTag(null, "aggregate");
        serializer.attributeInt(null, "scope", scope);
        serializer.attributeDouble(null, Context.POWER_SERVICE, getConsumedPower());
        this.mPowerComponents.writeToXml(serializer);
        serializer.endTag(null, "aggregate");
    }

    static void parseXml(TypedXmlPullParser parser, BatteryUsageStats.Builder builder) throws XmlPullParserException, IOException {
        int scope = parser.getAttributeInt(null, "scope");
        Builder consumerBuilder = builder.getAggregateBatteryConsumerBuilder(scope);
        int eventType = parser.getEventType();
        if (eventType != 2 || !parser.getName().equals("aggregate")) {
            throw new XmlPullParserException("Invalid XML parser state");
        }
        consumerBuilder.setConsumedPower(parser.getAttributeDouble(null, Context.POWER_SERVICE));
        while (true) {
            if ((eventType != 3 || !parser.getName().equals("aggregate")) && eventType != 1) {
                if (eventType == 2 && parser.getName().equals("power_components")) {
                    PowerComponents.parseXml(parser, consumerBuilder.mPowerComponentsBuilder);
                }
                eventType = parser.next();
            } else {
                return;
            }
        }
    }

    public static final class Builder extends BatteryConsumer.BaseBuilder<Builder> {
        @Override // android.os.BatteryConsumer.BaseBuilder
        public /* bridge */ /* synthetic */ BatteryConsumer.Key getKey(int i, int i2) {
            return super.getKey(i, i2);
        }

        @Override // android.os.BatteryConsumer.BaseBuilder
        public /* bridge */ /* synthetic */ BatteryConsumer.Key[] getKeys(int i) {
            return super.getKeys(i);
        }

        @Override // android.os.BatteryConsumer.BaseBuilder
        public /* bridge */ /* synthetic */ double getTotalPower() {
            return super.getTotalPower();
        }

        @Override // android.os.BatteryConsumer.BaseBuilder
        public /* bridge */ /* synthetic */ BatteryConsumer.BaseBuilder setConsumedPower(int i, double d) {
            return super.setConsumedPower(i, d);
        }

        @Override // android.os.BatteryConsumer.BaseBuilder
        public /* bridge */ /* synthetic */ BatteryConsumer.BaseBuilder setConsumedPower(int i, double d, int i2) {
            return super.setConsumedPower(i, d, i2);
        }

        @Override // android.os.BatteryConsumer.BaseBuilder
        public /* bridge */ /* synthetic */ BatteryConsumer.BaseBuilder setConsumedPower(BatteryConsumer.Key key, double d, int i) {
            return super.setConsumedPower(key, d, i);
        }

        @Override // android.os.BatteryConsumer.BaseBuilder
        public /* bridge */ /* synthetic */ BatteryConsumer.BaseBuilder setConsumedPowerForCustomComponent(int i, double d) {
            return super.setConsumedPowerForCustomComponent(i, d);
        }

        @Override // android.os.BatteryConsumer.BaseBuilder
        public /* bridge */ /* synthetic */ BatteryConsumer.BaseBuilder setUsageDurationForCustomComponentMillis(int i, long j) {
            return super.setUsageDurationForCustomComponentMillis(i, j);
        }

        @Override // android.os.BatteryConsumer.BaseBuilder
        public /* bridge */ /* synthetic */ BatteryConsumer.BaseBuilder setUsageDurationMillis(int i, long j) {
            return super.setUsageDurationMillis(i, j);
        }

        @Override // android.os.BatteryConsumer.BaseBuilder
        public /* bridge */ /* synthetic */ BatteryConsumer.BaseBuilder setUsageDurationMillis(BatteryConsumer.Key key, long j) {
            return super.setUsageDurationMillis(key, j);
        }

        public Builder(BatteryConsumer.BatteryConsumerData data, int scope) {
            super(data, 0);
            data.putInt(1, scope);
        }

        public Builder setConsumedPower(double consumedPowerMah) {
            this.mData.putDouble(2, consumedPowerMah);
            return this;
        }

        public void add(AggregateBatteryConsumer aggregateBatteryConsumer) {
            setConsumedPower(this.mData.getDouble(2) + aggregateBatteryConsumer.getConsumedPower());
            this.mPowerComponentsBuilder.addPowerAndDuration(aggregateBatteryConsumer.mPowerComponents);
        }

        public AggregateBatteryConsumer build() {
            return new AggregateBatteryConsumer(this);
        }
    }
}
