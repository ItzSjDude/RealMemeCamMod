.class public Lcom/oplus/camera/Storage$CameraPicture;
.super Ljava/lang/Object;
.source "Storage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/Storage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraPicture"
.end annotation


# instance fields
.field public A:Lcom/oplus/camera/ui/control/e;

.field public B:Z

.field public C:Z

.field public D:Z

.field public E:Z

.field public F:Ljava/lang/String;

.field public G:Ljava/lang/String;

.field public H:J

.field public I:J

.field public J:Z

.field public K:Lcom/oplus/camera/a/e;

.field public L:Landroid/graphics/Bitmap;

.field public M:Landroid/graphics/Bitmap;

.field public N:Lcom/oplus/camera/a/d;

.field public O:Lcom/oplus/camera/screen/a;

.field public P:Z

.field public Q:I

.field public R:Z

.field public S:Z

.field public T:Z

.field public U:Lcom/oplus/camera/ui/control/e$c;

.field public V:Lcom/oplus/camera/capmode/f;

.field public W:Z

.field public X:Z

.field public Y:Z

.field public a:Landroid/content/ContentResolver;

.field public b:Lcom/oplus/camera/aps/util/CameraApsExifData;

.field public c:Landroid/net/Uri;

.field public d:Landroid/location/Location;

.field public e:[B

.field public f:Landroid/graphics/Bitmap;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Lcom/oplus/camera/e/c$a;

.field public k:Ljava/lang/String;

.field public l:J

.field public m:J

.field public mPath:Ljava/lang/String;

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Lcom/oplus/camera/ui/control/e$b;

.field public z:Lcom/oplus/camera/ui/control/e$b;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1756
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1757
    iput-object v0, p0, Lcom/oplus/camera/Storage$CameraPicture;->a:Landroid/content/ContentResolver;

    .line 1758
    iput-object v0, p0, Lcom/oplus/camera/Storage$CameraPicture;->b:Lcom/oplus/camera/aps/util/CameraApsExifData;

    .line 1759
    iput-object v0, p0, Lcom/oplus/camera/Storage$CameraPicture;->c:Landroid/net/Uri;

    .line 1760
    iput-object v0, p0, Lcom/oplus/camera/Storage$CameraPicture;->d:Landroid/location/Location;

    .line 1761
    iput-object v0, p0, Lcom/oplus/camera/Storage$CameraPicture;->e:[B

    .line 1762
    iput-object v0, p0, Lcom/oplus/camera/Storage$CameraPicture;->f:Landroid/graphics/Bitmap;

    .line 1763
    iput-object v0, p0, Lcom/oplus/camera/Storage$CameraPicture;->g:Ljava/lang/String;

    .line 1764
    iput-object v0, p0, Lcom/oplus/camera/Storage$CameraPicture;->mPath:Ljava/lang/String;

    .line 1765
    iput-object v0, p0, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    .line 1766
    iput-object v0, p0, Lcom/oplus/camera/Storage$CameraPicture;->i:Ljava/lang/String;

    .line 1767
    iput-object v0, p0, Lcom/oplus/camera/Storage$CameraPicture;->j:Lcom/oplus/camera/e/c$a;

    .line 1768
    iput-object v0, p0, Lcom/oplus/camera/Storage$CameraPicture;->k:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 1769
    iput-wide v1, p0, Lcom/oplus/camera/Storage$CameraPicture;->l:J

    const-wide/16 v3, -0x1

    .line 1770
    iput-wide v3, p0, Lcom/oplus/camera/Storage$CameraPicture;->m:J

    const/4 v3, -0x1

    .line 1771
    iput v3, p0, Lcom/oplus/camera/Storage$CameraPicture;->n:I

    const/4 v3, 0x0

    .line 1772
    iput v3, p0, Lcom/oplus/camera/Storage$CameraPicture;->o:I

    .line 1773
    iput v3, p0, Lcom/oplus/camera/Storage$CameraPicture;->p:I

    .line 1774
    iput v3, p0, Lcom/oplus/camera/Storage$CameraPicture;->q:I

    .line 1775
    iput v3, p0, Lcom/oplus/camera/Storage$CameraPicture;->r:I

    .line 1776
    iput v3, p0, Lcom/oplus/camera/Storage$CameraPicture;->s:I

    .line 1777
    iput v3, p0, Lcom/oplus/camera/Storage$CameraPicture;->t:I

    .line 1778
    iput v3, p0, Lcom/oplus/camera/Storage$CameraPicture;->u:I

    .line 1779
    iput-boolean v3, p0, Lcom/oplus/camera/Storage$CameraPicture;->v:Z

    .line 1780
    iput-boolean v3, p0, Lcom/oplus/camera/Storage$CameraPicture;->w:Z

    .line 1781
    iput-boolean v3, p0, Lcom/oplus/camera/Storage$CameraPicture;->x:Z

    .line 1782
    iput-object v0, p0, Lcom/oplus/camera/Storage$CameraPicture;->y:Lcom/oplus/camera/ui/control/e$b;

    .line 1783
    iput-object v0, p0, Lcom/oplus/camera/Storage$CameraPicture;->z:Lcom/oplus/camera/ui/control/e$b;

    .line 1785
    iput-boolean v3, p0, Lcom/oplus/camera/Storage$CameraPicture;->B:Z

    .line 1786
    iput-boolean v3, p0, Lcom/oplus/camera/Storage$CameraPicture;->C:Z

    .line 1787
    iput-boolean v3, p0, Lcom/oplus/camera/Storage$CameraPicture;->D:Z

    .line 1788
    iput-boolean v3, p0, Lcom/oplus/camera/Storage$CameraPicture;->E:Z

    .line 1789
    iput-object v0, p0, Lcom/oplus/camera/Storage$CameraPicture;->F:Ljava/lang/String;

    .line 1790
    iput-object v0, p0, Lcom/oplus/camera/Storage$CameraPicture;->G:Ljava/lang/String;

    .line 1791
    iput-wide v1, p0, Lcom/oplus/camera/Storage$CameraPicture;->H:J

    .line 1792
    iput-wide v1, p0, Lcom/oplus/camera/Storage$CameraPicture;->I:J

    .line 1793
    iput-boolean v3, p0, Lcom/oplus/camera/Storage$CameraPicture;->J:Z

    .line 1794
    iput-object v0, p0, Lcom/oplus/camera/Storage$CameraPicture;->K:Lcom/oplus/camera/a/e;

    .line 1795
    iput-object v0, p0, Lcom/oplus/camera/Storage$CameraPicture;->L:Landroid/graphics/Bitmap;

    .line 1796
    iput-object v0, p0, Lcom/oplus/camera/Storage$CameraPicture;->M:Landroid/graphics/Bitmap;

    .line 1797
    iput-object v0, p0, Lcom/oplus/camera/Storage$CameraPicture;->N:Lcom/oplus/camera/a/d;

    .line 1798
    iput-object v0, p0, Lcom/oplus/camera/Storage$CameraPicture;->O:Lcom/oplus/camera/screen/a;

    .line 1799
    iput-boolean v3, p0, Lcom/oplus/camera/Storage$CameraPicture;->P:Z

    .line 1800
    iput v3, p0, Lcom/oplus/camera/Storage$CameraPicture;->Q:I

    .line 1801
    iput-boolean v3, p0, Lcom/oplus/camera/Storage$CameraPicture;->R:Z

    .line 1802
    iput-boolean v3, p0, Lcom/oplus/camera/Storage$CameraPicture;->S:Z

    .line 1803
    iput-boolean v3, p0, Lcom/oplus/camera/Storage$CameraPicture;->T:Z

    .line 1804
    iput-object v0, p0, Lcom/oplus/camera/Storage$CameraPicture;->U:Lcom/oplus/camera/ui/control/e$c;

    .line 1805
    iput-object v0, p0, Lcom/oplus/camera/Storage$CameraPicture;->V:Lcom/oplus/camera/capmode/f;

    .line 1806
    iput-boolean v3, p0, Lcom/oplus/camera/Storage$CameraPicture;->W:Z

    .line 1807
    iput-boolean v3, p0, Lcom/oplus/camera/Storage$CameraPicture;->X:Z

    .line 1808
    iput-boolean v3, p0, Lcom/oplus/camera/Storage$CameraPicture;->Y:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 1813
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraPicture: [width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/Storage$CameraPicture;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/Storage$CameraPicture;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mStride: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/Storage$CameraPicture;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mScanline: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/Storage$CameraPicture;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", jpegName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/Storage$CameraPicture;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mBurstShotFlagId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oplus/camera/Storage$CameraPicture;->m:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mCshotPath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/Storage$CameraPicture;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cameraId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/Storage$CameraPicture;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mMarkerNote: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/Storage$CameraPicture;->G:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRecBurstNum: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/Storage$CameraPicture;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTitle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/Storage$CameraPicture;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oplus/camera/Storage$CameraPicture;->l:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mCapMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/Storage$CameraPicture;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mbWriteExifByApp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/Storage$CameraPicture;->D:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", picture data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1818
    iget-object v1, p0, Lcom/oplus/camera/Storage$CameraPicture;->e:[B

    if-eqz v1, :cond_0

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mbNeedStoreImage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/Storage$CameraPicture;->v:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/Storage$CameraPicture;->c:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mbEncodeHeifByAps: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/Storage$CameraPicture;->W:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mbIsSuperTextOpen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/Storage$CameraPicture;->T:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isHighPictureSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oplus/camera/Storage$CameraPicture;->X:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
