package android.content.pm;

import android.content.ComponentName;
import android.graphics.drawable.Drawable;
import android.inputmethodservice.navigationbar.NavigationBarInflaterView;
import android.os.Parcel;
import android.util.Printer;

/* loaded from: classes.dex */
public class ComponentInfo extends PackageItemInfo {
    public ApplicationInfo applicationInfo;
    public String[] attributionTags;
    public int descriptionRes;
    public boolean directBootAware;
    public boolean enabled;
    public boolean exported;
    public String processName;
    public String splitName;

    public ComponentInfo() {
        this.enabled = true;
        this.exported = false;
        this.directBootAware = false;
    }

    public ComponentInfo(ComponentInfo orig) {
        super(orig);
        this.enabled = true;
        this.exported = false;
        this.directBootAware = false;
        this.applicationInfo = orig.applicationInfo;
        this.processName = orig.processName;
        this.splitName = orig.splitName;
        this.attributionTags = orig.attributionTags;
        this.descriptionRes = orig.descriptionRes;
        this.enabled = orig.enabled;
        this.exported = orig.exported;
        this.directBootAware = orig.directBootAware;
    }

    @Override // android.content.pm.PackageItemInfo
    public CharSequence loadUnsafeLabel(PackageManager pm) {
        CharSequence label;
        CharSequence label2;
        if (this.nonLocalizedLabel != null) {
            return this.nonLocalizedLabel;
        }
        ApplicationInfo ai = this.applicationInfo;
        if (this.labelRes != 0 && (label2 = pm.getText(this.packageName, this.labelRes, ai)) != null) {
            return label2;
        }
        CharSequence label3 = ai.nonLocalizedLabel;
        if (label3 != null) {
            return ai.nonLocalizedLabel;
        }
        if (ai.labelRes != 0 && (label = pm.getText(this.packageName, ai.labelRes, ai)) != null) {
            return label;
        }
        CharSequence label4 = this.name;
        return label4;
    }

    public boolean isEnabled() {
        return this.enabled && this.applicationInfo.enabled;
    }

    public final int getIconResource() {
        return this.icon != 0 ? this.icon : this.applicationInfo.icon;
    }

    public final int getLogoResource() {
        return this.logo != 0 ? this.logo : this.applicationInfo.logo;
    }

    public final int getBannerResource() {
        return this.banner != 0 ? this.banner : this.applicationInfo.banner;
    }

    public ComponentName getComponentName() {
        return new ComponentName(this.packageName, this.name);
    }

    @Override // android.content.pm.PackageItemInfo
    protected void dumpFront(Printer pw, String prefix) {
        super.dumpFront(pw, prefix);
        if (this.processName != null && !this.packageName.equals(this.processName)) {
            pw.println(prefix + "processName=" + this.processName);
        }
        if (this.splitName != null) {
            pw.println(prefix + "splitName=" + this.splitName);
        }
        String[] strArr = this.attributionTags;
        if (strArr != null && strArr.length > 0) {
            StringBuilder tags = new StringBuilder();
            tags.append(this.attributionTags[0]);
            for (int i = 1; i < this.attributionTags.length; i++) {
                tags.append(", ");
                tags.append(this.attributionTags[i]);
            }
            pw.println(prefix + "attributionTags=[" + ((Object) tags) + NavigationBarInflaterView.SIZE_MOD_END);
        }
        pw.println(prefix + "enabled=" + this.enabled + " exported=" + this.exported + " directBootAware=" + this.directBootAware);
        if (this.descriptionRes != 0) {
            pw.println(prefix + "description=" + this.descriptionRes);
        }
    }

    @Override // android.content.pm.PackageItemInfo
    protected void dumpBack(Printer pw, String prefix) {
        dumpBack(pw, prefix, 3);
    }

    void dumpBack(Printer pw, String prefix, int dumpFlags) {
        if ((dumpFlags & 2) != 0) {
            if (this.applicationInfo != null) {
                pw.println(prefix + "ApplicationInfo:");
                this.applicationInfo.dump(pw, prefix + "  ", dumpFlags);
            } else {
                pw.println(prefix + "ApplicationInfo: null");
            }
        }
        super.dumpBack(pw, prefix);
    }

    @Override // android.content.pm.PackageItemInfo, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        this.applicationInfo.writeToParcel(parcel, i);
        parcel.writeString8(this.processName);
        parcel.writeString8(this.splitName);
        parcel.writeString8Array(this.attributionTags);
        parcel.writeInt(this.descriptionRes);
        parcel.writeInt(this.enabled ? 1 : 0);
        parcel.writeInt(this.exported ? 1 : 0);
        parcel.writeInt(this.directBootAware ? 1 : 0);
    }

    protected ComponentInfo(Parcel source) {
        boolean z;
        boolean z2;
        super(source);
        this.enabled = true;
        this.exported = false;
        this.directBootAware = false;
        this.applicationInfo = ApplicationInfo.CREATOR.createFromParcel(source);
        this.processName = source.readString8();
        this.splitName = source.readString8();
        this.attributionTags = source.createString8Array();
        this.descriptionRes = source.readInt();
        if (source.readInt() != 0) {
            z = true;
        } else {
            z = false;
        }
        this.enabled = z;
        if (source.readInt() != 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        this.exported = z2;
        this.directBootAware = source.readInt() != 0;
    }

    @Override // android.content.pm.PackageItemInfo
    public Drawable loadDefaultIcon(PackageManager pm) {
        return this.applicationInfo.loadIcon(pm);
    }

    @Override // android.content.pm.PackageItemInfo
    protected Drawable loadDefaultBanner(PackageManager pm) {
        return this.applicationInfo.loadBanner(pm);
    }

    @Override // android.content.pm.PackageItemInfo
    protected Drawable loadDefaultLogo(PackageManager pm) {
        return this.applicationInfo.loadLogo(pm);
    }

    @Override // android.content.pm.PackageItemInfo
    protected ApplicationInfo getApplicationInfo() {
        return this.applicationInfo;
    }
}
