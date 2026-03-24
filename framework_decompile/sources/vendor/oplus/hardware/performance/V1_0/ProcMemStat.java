package vendor.oplus.hardware.performance.V1_0;

import android.os.HidlSupport;
import android.os.HwBlob;
import android.os.HwParcel;
import java.util.ArrayList;
import java.util.Objects;

/* loaded from: classes5.dex */
public final class ProcMemStat {
    public String comm = new String();
    public boolean is_32bit = false;
    public short oom_score_adj = 0;
    public int nr_fds = 0;
    public int uid = 0;
    public int pid = 0;
    public int ppid = 0;
    public int anon = 0;
    public int file = 0;
    public int shmem = 0;
    public int swap = 0;
    public int vss = 0;
    public int pss = 0;
    public int swap_rss = 0;
    public int javaheap = 0;
    public int nativeheap = 0;
    public int ashmem = 0;
    public int dmabuf = 0;
    public int gpu = 0;

    public final boolean equals(Object otherObject) {
        if (this == otherObject) {
            return true;
        }
        if (otherObject == null || otherObject.getClass() != ProcMemStat.class) {
            return false;
        }
        ProcMemStat other = (ProcMemStat) otherObject;
        if (HidlSupport.deepEquals(this.comm, other.comm) && this.is_32bit == other.is_32bit && this.oom_score_adj == other.oom_score_adj && this.nr_fds == other.nr_fds && this.uid == other.uid && this.pid == other.pid && this.ppid == other.ppid && this.anon == other.anon && this.file == other.file && this.shmem == other.shmem && this.swap == other.swap && this.vss == other.vss && this.pss == other.pss && this.swap_rss == other.swap_rss && this.javaheap == other.javaheap && this.nativeheap == other.nativeheap && this.ashmem == other.ashmem && this.dmabuf == other.dmabuf && this.gpu == other.gpu) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(HidlSupport.deepHashCode(this.comm)), Integer.valueOf(HidlSupport.deepHashCode(Boolean.valueOf(this.is_32bit))), Integer.valueOf(HidlSupport.deepHashCode(Short.valueOf(this.oom_score_adj))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.nr_fds))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.uid))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.pid))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.ppid))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.anon))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.file))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.shmem))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.swap))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.vss))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.pss))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.swap_rss))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.javaheap))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.nativeheap))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.ashmem))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.dmabuf))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.gpu))));
    }

    public final String toString() {
        return "{.comm = " + this.comm + ", .is_32bit = " + this.is_32bit + ", .oom_score_adj = " + ((int) this.oom_score_adj) + ", .nr_fds = " + this.nr_fds + ", .uid = " + this.uid + ", .pid = " + this.pid + ", .ppid = " + this.ppid + ", .anon = " + this.anon + ", .file = " + this.file + ", .shmem = " + this.shmem + ", .swap = " + this.swap + ", .vss = " + this.vss + ", .pss = " + this.pss + ", .swap_rss = " + this.swap_rss + ", .javaheap = " + this.javaheap + ", .nativeheap = " + this.nativeheap + ", .ashmem = " + this.ashmem + ", .dmabuf = " + this.dmabuf + ", .gpu = " + this.gpu + "}";
    }

    public final void readFromParcel(HwParcel parcel) {
        HwBlob blob = parcel.readBuffer(88L);
        readEmbeddedFromParcel(parcel, blob, 0L);
    }

    public static final ArrayList<ProcMemStat> readVectorFromParcel(HwParcel parcel) {
        ArrayList<ProcMemStat> _hidl_vec = new ArrayList<>();
        HwBlob _hidl_blob = parcel.readBuffer(16L);
        int _hidl_vec_size = _hidl_blob.getInt32(8L);
        HwBlob childBlob = parcel.readEmbeddedBuffer(_hidl_vec_size * 88, _hidl_blob.handle(), 0L, true);
        _hidl_vec.clear();
        for (int _hidl_index_0 = 0; _hidl_index_0 < _hidl_vec_size; _hidl_index_0++) {
            ProcMemStat _hidl_vec_element = new ProcMemStat();
            _hidl_vec_element.readEmbeddedFromParcel(parcel, childBlob, _hidl_index_0 * 88);
            _hidl_vec.add(_hidl_vec_element);
        }
        return _hidl_vec;
    }

    public final void readEmbeddedFromParcel(HwParcel parcel, HwBlob _hidl_blob, long _hidl_offset) {
        this.comm = _hidl_blob.getString(_hidl_offset + 0);
        parcel.readEmbeddedBuffer(r2.getBytes().length + 1, _hidl_blob.handle(), _hidl_offset + 0 + 0, false);
        this.is_32bit = _hidl_blob.getBool(16 + _hidl_offset);
        this.oom_score_adj = _hidl_blob.getInt16(18 + _hidl_offset);
        this.nr_fds = _hidl_blob.getInt32(20 + _hidl_offset);
        this.uid = _hidl_blob.getInt32(24 + _hidl_offset);
        this.pid = _hidl_blob.getInt32(28 + _hidl_offset);
        this.ppid = _hidl_blob.getInt32(32 + _hidl_offset);
        this.anon = _hidl_blob.getInt32(36 + _hidl_offset);
        this.file = _hidl_blob.getInt32(40 + _hidl_offset);
        this.shmem = _hidl_blob.getInt32(44 + _hidl_offset);
        this.swap = _hidl_blob.getInt32(48 + _hidl_offset);
        this.vss = _hidl_blob.getInt32(52 + _hidl_offset);
        this.pss = _hidl_blob.getInt32(56 + _hidl_offset);
        this.swap_rss = _hidl_blob.getInt32(60 + _hidl_offset);
        this.javaheap = _hidl_blob.getInt32(64 + _hidl_offset);
        this.nativeheap = _hidl_blob.getInt32(68 + _hidl_offset);
        this.ashmem = _hidl_blob.getInt32(72 + _hidl_offset);
        this.dmabuf = _hidl_blob.getInt32(76 + _hidl_offset);
        this.gpu = _hidl_blob.getInt32(80 + _hidl_offset);
    }

    public final void writeToParcel(HwParcel parcel) {
        HwBlob _hidl_blob = new HwBlob(88);
        writeEmbeddedToBlob(_hidl_blob, 0L);
        parcel.writeBuffer(_hidl_blob);
    }

    public static final void writeVectorToParcel(HwParcel parcel, ArrayList<ProcMemStat> _hidl_vec) {
        HwBlob _hidl_blob = new HwBlob(16);
        int _hidl_vec_size = _hidl_vec.size();
        _hidl_blob.putInt32(8L, _hidl_vec_size);
        _hidl_blob.putBool(12L, false);
        HwBlob childBlob = new HwBlob(_hidl_vec_size * 88);
        for (int _hidl_index_0 = 0; _hidl_index_0 < _hidl_vec_size; _hidl_index_0++) {
            _hidl_vec.get(_hidl_index_0).writeEmbeddedToBlob(childBlob, _hidl_index_0 * 88);
        }
        _hidl_blob.putBlob(0L, childBlob);
        parcel.writeBuffer(_hidl_blob);
    }

    public final void writeEmbeddedToBlob(HwBlob _hidl_blob, long _hidl_offset) {
        _hidl_blob.putString(0 + _hidl_offset, this.comm);
        _hidl_blob.putBool(16 + _hidl_offset, this.is_32bit);
        _hidl_blob.putInt16(18 + _hidl_offset, this.oom_score_adj);
        _hidl_blob.putInt32(20 + _hidl_offset, this.nr_fds);
        _hidl_blob.putInt32(24 + _hidl_offset, this.uid);
        _hidl_blob.putInt32(28 + _hidl_offset, this.pid);
        _hidl_blob.putInt32(32 + _hidl_offset, this.ppid);
        _hidl_blob.putInt32(36 + _hidl_offset, this.anon);
        _hidl_blob.putInt32(40 + _hidl_offset, this.file);
        _hidl_blob.putInt32(44 + _hidl_offset, this.shmem);
        _hidl_blob.putInt32(48 + _hidl_offset, this.swap);
        _hidl_blob.putInt32(52 + _hidl_offset, this.vss);
        _hidl_blob.putInt32(56 + _hidl_offset, this.pss);
        _hidl_blob.putInt32(60 + _hidl_offset, this.swap_rss);
        _hidl_blob.putInt32(64 + _hidl_offset, this.javaheap);
        _hidl_blob.putInt32(68 + _hidl_offset, this.nativeheap);
        _hidl_blob.putInt32(72 + _hidl_offset, this.ashmem);
        _hidl_blob.putInt32(76 + _hidl_offset, this.dmabuf);
        _hidl_blob.putInt32(80 + _hidl_offset, this.gpu);
    }
}
