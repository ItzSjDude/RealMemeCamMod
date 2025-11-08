.class public Lcom/oplus/camera/timelapsepro/h;
.super Lcom/oplus/camera/capmode/BaseMode;
.source "TimeLapseProMode.java"

# interfaces
.implements Lcom/oplus/camera/timelapsepro/g$d;
.implements Lcom/oplus/camera/timelapsepro/g$f;


# instance fields
.field private A:J

.field private B:Z

.field private C:Lcom/oplus/camera/e/c;

.field private D:Lcom/oplus/camera/aps/util/CameraApsDecision;

.field private E:Lcom/oplus/camera/e/d$a;

.field private F:I

.field private G:Z

.field private H:I

.field private I:I

.field private J:Lcom/oplus/camera/timelapsepro/g;

.field private K:Z

.field private L:Z

.field private M:Z

.field private N:J

.field private O:J

.field private P:J

.field private Q:J

.field private R:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/camera/timelapsepro/a/e;",
            ">;"
        }
    .end annotation
.end field

.field private S:Z

.field private T:Z

.field private U:Landroid/os/Handler;

.field private V:Landroid/os/Handler;

.field private W:Landroid/widget/RelativeLayout;

.field private X:Landroid/widget/ImageView;

.field private Y:Z

.field private Z:Landroid/renderscript/RenderScript;

.field private aA:Ljava/lang/String;

.field private aB:Z

.field private aC:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;",
            ">;"
        }
    .end annotation
.end field

.field private aD:Lcom/oplus/camera/timelapsepro/g$e;

.field private final aE:Landroid/view/View$OnClickListener;

.field private aF:Z

.field private aa:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

.field private ab:Landroid/renderscript/Type$Builder;

.field private ac:Landroid/renderscript/Type$Builder;

.field private ad:I

.field private ae:I

.field private af:J

.field private ag:J

.field private ah:Ljava/lang/String;

.field private ai:F

.field private aj:Z

.field private ak:Lcom/oplus/camera/ui/inverse/InverseTextView;

.field private al:Landroid/graphics/Bitmap;

.field private am:Landroid/graphics/Bitmap;

.field private an:Lcom/oplus/camera/jni/FormatConverter;

.field private ao:Landroid/widget/RelativeLayout$LayoutParams;

.field private ap:Landroid/widget/RelativeLayout$LayoutParams;

.field private aq:Z

.field private ar:Z

.field private as:Z

.field private at:Z

.field private au:Z

.field private av:Z

.field private aw:F

.field private ax:Ljava/lang/String;

.field private ay:Ljava/lang/String;

.field private az:Ljava/lang/String;

.field protected g:Z

.field private final h:Landroid/os/ConditionVariable;

.field private i:Ljava/lang/String;

.field private j:J

.field private k:J

.field private l:J

.field private m:Lcom/oplus/camera/timelapsepro/c;

.field private n:Z

.field private o:Z

.field private p:I

.field private q:I

.field private r:J

.field private s:Landroid/os/Handler;

.field private t:I

.field private u:Z

.field private v:Ljava/lang/Object;

.field private w:I

.field private x:I

.field private volatile y:I

.field private volatile z:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V
    .locals 2

    .line 325
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/camera/capmode/BaseMode;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    .line 165
    new-instance p1, Landroid/os/ConditionVariable;

    invoke-direct {p1}, Landroid/os/ConditionVariable;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->h:Landroid/os/ConditionVariable;

    const-string p1, "15"

    .line 167
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->i:Ljava/lang/String;

    const-wide/16 p1, 0x0

    .line 168
    iput-wide p1, p0, Lcom/oplus/camera/timelapsepro/h;->j:J

    .line 169
    iput-wide p1, p0, Lcom/oplus/camera/timelapsepro/h;->k:J

    const-wide/32 p3, 0xdbba00

    .line 170
    iput-wide p3, p0, Lcom/oplus/camera/timelapsepro/h;->l:J

    const/4 p3, 0x0

    .line 172
    iput-boolean p3, p0, Lcom/oplus/camera/timelapsepro/h;->g:Z

    const/4 p4, 0x0

    .line 173
    iput-object p4, p0, Lcom/oplus/camera/timelapsepro/h;->m:Lcom/oplus/camera/timelapsepro/c;

    .line 175
    iput-boolean p3, p0, Lcom/oplus/camera/timelapsepro/h;->n:Z

    .line 176
    iput-boolean p3, p0, Lcom/oplus/camera/timelapsepro/h;->o:Z

    .line 177
    iput p3, p0, Lcom/oplus/camera/timelapsepro/h;->p:I

    .line 179
    iput p3, p0, Lcom/oplus/camera/timelapsepro/h;->q:I

    .line 180
    iput-wide p1, p0, Lcom/oplus/camera/timelapsepro/h;->r:J

    .line 182
    iput-object p4, p0, Lcom/oplus/camera/timelapsepro/h;->s:Landroid/os/Handler;

    const/4 v0, -0x1

    .line 184
    iput v0, p0, Lcom/oplus/camera/timelapsepro/h;->t:I

    .line 185
    iput-boolean p3, p0, Lcom/oplus/camera/timelapsepro/h;->u:Z

    .line 187
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->v:Ljava/lang/Object;

    .line 188
    iput p3, p0, Lcom/oplus/camera/timelapsepro/h;->w:I

    .line 189
    iput p3, p0, Lcom/oplus/camera/timelapsepro/h;->x:I

    .line 190
    iput p3, p0, Lcom/oplus/camera/timelapsepro/h;->y:I

    const/4 v0, 0x2

    .line 191
    iput v0, p0, Lcom/oplus/camera/timelapsepro/h;->z:I

    .line 192
    iput-wide p1, p0, Lcom/oplus/camera/timelapsepro/h;->A:J

    .line 193
    iput-boolean p3, p0, Lcom/oplus/camera/timelapsepro/h;->B:Z

    .line 194
    iput-object p4, p0, Lcom/oplus/camera/timelapsepro/h;->C:Lcom/oplus/camera/e/c;

    .line 195
    iput-object p4, p0, Lcom/oplus/camera/timelapsepro/h;->D:Lcom/oplus/camera/aps/util/CameraApsDecision;

    .line 196
    iput-object p4, p0, Lcom/oplus/camera/timelapsepro/h;->E:Lcom/oplus/camera/e/d$a;

    .line 197
    iput p3, p0, Lcom/oplus/camera/timelapsepro/h;->F:I

    const/4 v0, 0x1

    .line 198
    iput-boolean v0, p0, Lcom/oplus/camera/timelapsepro/h;->G:Z

    .line 199
    iput p3, p0, Lcom/oplus/camera/timelapsepro/h;->H:I

    .line 200
    iput p3, p0, Lcom/oplus/camera/timelapsepro/h;->I:I

    .line 201
    iput-object p4, p0, Lcom/oplus/camera/timelapsepro/h;->J:Lcom/oplus/camera/timelapsepro/g;

    .line 203
    iput-boolean p3, p0, Lcom/oplus/camera/timelapsepro/h;->K:Z

    .line 204
    iput-boolean p3, p0, Lcom/oplus/camera/timelapsepro/h;->L:Z

    .line 205
    iput-boolean p3, p0, Lcom/oplus/camera/timelapsepro/h;->M:Z

    .line 207
    iput-wide p1, p0, Lcom/oplus/camera/timelapsepro/h;->N:J

    .line 208
    iput-wide p1, p0, Lcom/oplus/camera/timelapsepro/h;->O:J

    .line 209
    iput-wide p1, p0, Lcom/oplus/camera/timelapsepro/h;->P:J

    .line 210
    iput-wide p1, p0, Lcom/oplus/camera/timelapsepro/h;->Q:J

    .line 211
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->R:Ljava/util/List;

    .line 212
    iput-boolean p3, p0, Lcom/oplus/camera/timelapsepro/h;->S:Z

    .line 213
    iput-boolean p3, p0, Lcom/oplus/camera/timelapsepro/h;->T:Z

    .line 215
    iput-object p4, p0, Lcom/oplus/camera/timelapsepro/h;->U:Landroid/os/Handler;

    .line 216
    iput-object p4, p0, Lcom/oplus/camera/timelapsepro/h;->V:Landroid/os/Handler;

    .line 217
    iput-object p4, p0, Lcom/oplus/camera/timelapsepro/h;->W:Landroid/widget/RelativeLayout;

    .line 218
    iput-object p4, p0, Lcom/oplus/camera/timelapsepro/h;->X:Landroid/widget/ImageView;

    .line 219
    iput-boolean p3, p0, Lcom/oplus/camera/timelapsepro/h;->Y:Z

    .line 227
    iput p3, p0, Lcom/oplus/camera/timelapsepro/h;->ad:I

    .line 228
    iput p3, p0, Lcom/oplus/camera/timelapsepro/h;->ae:I

    .line 229
    iput-wide p1, p0, Lcom/oplus/camera/timelapsepro/h;->af:J

    .line 230
    iput-wide p1, p0, Lcom/oplus/camera/timelapsepro/h;->ag:J

    const/high16 p1, -0x40800000    # -1.0f

    .line 232
    iput p1, p0, Lcom/oplus/camera/timelapsepro/h;->ai:F

    .line 233
    iput-boolean p3, p0, Lcom/oplus/camera/timelapsepro/h;->aj:Z

    .line 236
    iput-object p4, p0, Lcom/oplus/camera/timelapsepro/h;->al:Landroid/graphics/Bitmap;

    .line 237
    iput-object p4, p0, Lcom/oplus/camera/timelapsepro/h;->am:Landroid/graphics/Bitmap;

    .line 238
    iput-object p4, p0, Lcom/oplus/camera/timelapsepro/h;->an:Lcom/oplus/camera/jni/FormatConverter;

    .line 239
    iput-object p4, p0, Lcom/oplus/camera/timelapsepro/h;->ao:Landroid/widget/RelativeLayout$LayoutParams;

    .line 240
    iput-object p4, p0, Lcom/oplus/camera/timelapsepro/h;->ap:Landroid/widget/RelativeLayout$LayoutParams;

    .line 241
    iput-boolean p3, p0, Lcom/oplus/camera/timelapsepro/h;->aq:Z

    .line 242
    iput-boolean p3, p0, Lcom/oplus/camera/timelapsepro/h;->ar:Z

    .line 243
    iput-boolean v0, p0, Lcom/oplus/camera/timelapsepro/h;->as:Z

    .line 244
    iput-boolean p3, p0, Lcom/oplus/camera/timelapsepro/h;->at:Z

    .line 245
    iput-boolean p3, p0, Lcom/oplus/camera/timelapsepro/h;->au:Z

    .line 247
    iput-boolean p3, p0, Lcom/oplus/camera/timelapsepro/h;->av:Z

    const/4 p1, 0x0

    .line 248
    iput p1, p0, Lcom/oplus/camera/timelapsepro/h;->aw:F

    const-string p1, ""

    .line 249
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->ax:Ljava/lang/String;

    .line 250
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->ay:Ljava/lang/String;

    .line 251
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->az:Ljava/lang/String;

    .line 252
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->aA:Ljava/lang/String;

    .line 253
    iput-boolean v0, p0, Lcom/oplus/camera/timelapsepro/h;->aB:Z

    .line 255
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->aC:Ljava/util/Map;

    .line 257
    new-instance p1, Lcom/oplus/camera/timelapsepro/h$1;

    invoke-direct {p1, p0}, Lcom/oplus/camera/timelapsepro/h$1;-><init>(Lcom/oplus/camera/timelapsepro/h;)V

    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->aD:Lcom/oplus/camera/timelapsepro/g$e;

    .line 301
    new-instance p1, Lcom/oplus/camera/timelapsepro/h$2;

    invoke-direct {p1, p0}, Lcom/oplus/camera/timelapsepro/h$2;-><init>(Lcom/oplus/camera/timelapsepro/h;)V

    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->aE:Landroid/view/View$OnClickListener;

    .line 618
    iput-boolean p3, p0, Lcom/oplus/camera/timelapsepro/h;->aF:Z

    return-void
.end method

.method static synthetic A(Lcom/oplus/camera/timelapsepro/h;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method private A()V
    .locals 13

    .line 1697
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStopRecordingMsg, Begin, mbPaused: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/timelapsepro/h;->mbPaused:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TimeLapseProMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1699
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->s:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v2, 0x69

    .line 1700
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1701
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->s:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1702
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->s:Landroid/os/Handler;

    const/16 v2, 0x6f

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1703
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->s:Landroid/os/Handler;

    const/16 v2, 0x70

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    const/4 v0, 0x3

    .line 1706
    invoke-virtual {p0, v0}, Lcom/oplus/camera/timelapsepro/h;->b(I)V

    .line 1708
    iget-boolean v0, p0, Lcom/oplus/camera/timelapsepro/h;->mbPaused:Z

    if-nez v0, :cond_1

    .line 1709
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/oplus/camera/timelapsepro/-$$Lambda$h$D-qXchdN3e1Ui40DgsuuY-etDps;

    invoke-direct {v2, p0}, Lcom/oplus/camera/timelapsepro/-$$Lambda$h$D-qXchdN3e1Ui40DgsuuY-etDps;-><init>(Lcom/oplus/camera/timelapsepro/h;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    move-object v3, p0

    .line 1723
    invoke-virtual/range {v3 .. v12}, Lcom/oplus/camera/timelapsepro/h;->pictureTakenCallback([BIILjava/lang/String;ZZJI)V

    .line 1726
    :cond_1
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->e()Lcom/oplus/camera/timelapsepro/c;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/oplus/camera/timelapsepro/c;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1727
    iget-wide v3, p0, Lcom/oplus/camera/timelapsepro/h;->P:J

    iget-wide v5, p0, Lcom/oplus/camera/timelapsepro/h;->Q:J

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/oplus/camera/timelapsepro/h;->a(JJ)V

    .line 1730
    :cond_2
    new-instance v0, Lcom/oplus/camera/timelapsepro/-$$Lambda$h$QGkaXZVl9eBYXOF5FsYnclyKk0k;

    invoke-direct {v0, p0}, Lcom/oplus/camera/timelapsepro/-$$Lambda$h$QGkaXZVl9eBYXOF5FsYnclyKk0k;-><init>(Lcom/oplus/camera/timelapsepro/h;)V

    invoke-direct {p0, v0}, Lcom/oplus/camera/timelapsepro/h;->a(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 1731
    iput v0, p0, Lcom/oplus/camera/timelapsepro/h;->x:I

    const-wide/16 v3, 0x0

    .line 1732
    iput-wide v3, p0, Lcom/oplus/camera/timelapsepro/h;->Q:J

    .line 1734
    iput-boolean v2, p0, Lcom/oplus/camera/timelapsepro/h;->as:Z

    const/4 v0, 0x2

    .line 1735
    invoke-virtual {p0, v0}, Lcom/oplus/camera/timelapsepro/h;->b(I)V

    .line 1737
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->s:Landroid/os/Handler;

    if-eqz v0, :cond_3

    const/16 p0, 0x6d

    const-wide/16 v2, 0x32

    .line 1738
    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1740
    :cond_3
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->h:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    :goto_0
    const-string p0, "onStopRecordingMsg, End"

    .line 1743
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic B(Lcom/oplus/camera/timelapsepro/h;)Lcom/oplus/camera/capmode/a;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    return-object p0
.end method

.method private B()V
    .locals 5

    const-string v0, "TimeLapseProMode"

    const-string v1, "onStartRecordingMsg, Begin"

    .line 1747
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1749
    iget-boolean v1, p0, Lcom/oplus/camera/timelapsepro/h;->mbPaused:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/oplus/camera/timelapsepro/h;->mbDestroyed:Z

    if-nez v1, :cond_1

    .line 1750
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->e()Lcom/oplus/camera/timelapsepro/c;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/h;->isStarVideoOpen()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oplus/camera/timelapsepro/c;->b(Z)V

    .line 1751
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->e()Lcom/oplus/camera/timelapsepro/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/timelapsepro/c;->a()V

    .line 1752
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->e()Lcom/oplus/camera/timelapsepro/c;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oplus/camera/timelapsepro/h;->mbFrontCamera:Z

    invoke-virtual {v1, v2}, Lcom/oplus/camera/timelapsepro/c;->d(Z)V

    .line 1754
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->v()V

    .line 1756
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->s:Landroid/os/Handler;

    if-eqz v1, :cond_0

    const/16 v2, 0x69

    .line 1757
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1758
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->s:Landroid/os/Handler;

    const-wide/16 v3, 0x51

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1759
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->s:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1760
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->s:Landroid/os/Handler;

    const-wide/32 v3, 0x493e0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    const-wide/16 v1, 0x0

    .line 1763
    iput-wide v1, p0, Lcom/oplus/camera/timelapsepro/h;->O:J

    const/4 v1, 0x0

    .line 1765
    invoke-virtual {p0, v1}, Lcom/oplus/camera/timelapsepro/h;->b(I)V

    .line 1767
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 1768
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/oplus/camera/timelapsepro/-$$Lambda$h$sQ-5hVbjJp12r9LYD-Y4gFSm3Gk;

    invoke-direct {v2, p0}, Lcom/oplus/camera/timelapsepro/-$$Lambda$h$sQ-5hVbjJp12r9LYD-Y4gFSm3Gk;-><init>(Lcom/oplus/camera/timelapsepro/h;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    const-string p0, "onStartRecordingMsg, End"

    .line 1776
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private C()V
    .locals 10

    .line 1780
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "trySendRepeatBurstCaptureMessage, mbPaused: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/timelapsepro/h;->mbPaused:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isVideoRecordStop(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1781
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->K()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mbLastCaptureRequest: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/timelapsepro/h;->B:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDelayCap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oplus/camera/timelapsepro/h;->j:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mbStarVideoEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/timelapsepro/h;->o:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TimeLapseProMode"

    .line 1780
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1786
    iget-boolean v0, p0, Lcom/oplus/camera/timelapsepro/h;->mbPaused:Z

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->K()Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/oplus/camera/timelapsepro/h;->B:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->s:Landroid/os/Handler;

    if-eqz v0, :cond_5

    .line 1787
    iget-boolean v1, p0, Lcom/oplus/camera/timelapsepro/h;->o:Z

    const/16 v2, 0x65

    if-nez v1, :cond_4

    .line 1788
    iget-wide v0, p0, Lcom/oplus/camera/timelapsepro/h;->k:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    const-wide/16 v3, 0x1f4

    if-lez v0, :cond_2

    iget v0, p0, Lcom/oplus/camera/timelapsepro/h;->y:I

    int-to-long v0, v0

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/h;->isSloganOpen()Z

    move-result v5

    const-wide/16 v6, 0x1

    if-eqz v5, :cond_0

    iget-wide v8, p0, Lcom/oplus/camera/timelapsepro/h;->k:J

    sub-long/2addr v8, v6

    const-wide/16 v5, 0x2

    mul-long/2addr v8, v5

    goto :goto_0

    :cond_0
    iget-wide v8, p0, Lcom/oplus/camera/timelapsepro/h;->k:J

    sub-long/2addr v8, v6

    :goto_0
    cmp-long v0, v0, v8

    if-ltz v0, :cond_2

    .line 1789
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->s:Landroid/os/Handler;

    const/16 v1, 0x6e

    iget-boolean v2, p0, Lcom/oplus/camera/timelapsepro/h;->mbFrontCamera:Z

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    iget-wide v3, p0, Lcom/oplus/camera/timelapsepro/h;->j:J

    :goto_1
    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_3

    .line 1791
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->s:Landroid/os/Handler;

    iget-boolean v1, p0, Lcom/oplus/camera/timelapsepro/h;->mbFrontCamera:Z

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    iget-wide v3, p0, Lcom/oplus/camera/timelapsepro/h;->j:J

    :goto_2
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_3

    .line 1794
    :cond_4
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    .line 1797
    :cond_5
    new-instance v0, Lcom/oplus/camera/timelapsepro/-$$Lambda$h$2_omIdGNUHJS42LA31tr9SDdbHo;

    invoke-direct {v0, p0}, Lcom/oplus/camera/timelapsepro/-$$Lambda$h$2_omIdGNUHJS42LA31tr9SDdbHo;-><init>(Lcom/oplus/camera/timelapsepro/h;)V

    invoke-direct {p0, v0}, Lcom/oplus/camera/timelapsepro/h;->a(Ljava/lang/Runnable;)V

    :goto_3
    return-void
.end method

.method private D()V
    .locals 3

    .line 1802
    iget v0, p0, Lcom/oplus/camera/timelapsepro/h;->p:I

    if-lez v0, :cond_0

    .line 1803
    invoke-direct {p0, v0}, Lcom/oplus/camera/timelapsepro/h;->c(I)V

    .line 1806
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->C:Lcom/oplus/camera/e/c;

    if-eqz v0, :cond_1

    .line 1807
    iget v1, p0, Lcom/oplus/camera/timelapsepro/h;->w:I

    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/h;->E:Lcom/oplus/camera/e/d$a;

    invoke-virtual {p0, v1, v0, v2}, Lcom/oplus/camera/timelapsepro/h;->burstCapture(ILcom/oplus/camera/e/c;Lcom/oplus/camera/e/d$a;)V

    :cond_1
    return-void
.end method

.method private E()Ljava/lang/String;
    .locals 2

    .line 1914
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "-1"

    if-nez v0, :cond_0

    goto :goto_0

    .line 1916
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mPreferences:Landroid/content/SharedPreferences;

    const-string v0, "pref_time_lapse_pro_exposure_time_key"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private F()J
    .locals 2

    .line 1922
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mPreferences:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    .line 1923
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f10013e

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "pref_time_lapse_pro_exposure_time_key"

    .line 1922
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1925
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private G()V
    .locals 5

    .line 2225
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v0, :cond_1

    .line 2226
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10050a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2228
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "pref_time_lapse_pro_whitebalance_key"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2229
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2230
    invoke-virtual {p0, v1}, Lcom/oplus/camera/timelapsepro/h;->b(Z)V

    goto :goto_0

    .line 2232
    :cond_0
    invoke-direct {p0, v1}, Lcom/oplus/camera/timelapsepro/h;->h(Z)V

    :goto_0
    const/4 v0, 0x0

    .line 2235
    invoke-virtual {p0, v0}, Lcom/oplus/camera/timelapsepro/h;->b(Ljava/lang/String;)V

    .line 2236
    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/h;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/h;->d()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2237
    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/timelapsepro/h;->b(Ljava/lang/String;Z)V

    .line 2238
    invoke-direct {p0, v1}, Lcom/oplus/camera/timelapsepro/h;->i(Z)V

    .line 2241
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->J:Lcom/oplus/camera/timelapsepro/g;

    if-eqz v0, :cond_4

    .line 2242
    iget v1, p0, Lcom/oplus/camera/timelapsepro/h;->I:I

    if-nez v1, :cond_2

    .line 2243
    invoke-virtual {v0}, Lcom/oplus/camera/timelapsepro/g;->g()Ljava/lang/String;

    move-result-object v0

    .line 2244
    invoke-direct {p0, v0}, Lcom/oplus/camera/timelapsepro/h;->d(Ljava/lang/String;)V

    .line 2245
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->J:Lcom/oplus/camera/timelapsepro/g;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/timelapsepro/g;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    if-ne v1, v0, :cond_3

    .line 2247
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1006c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/camera/timelapsepro/h;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x3

    if-ne v1, v0, :cond_4

    .line 2249
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1006c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/camera/timelapsepro/h;->d(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private H()Z
    .locals 5

    .line 2477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startRecording, mRecorderStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/timelapsepro/h;->z:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TimeLapseProMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2479
    sget-boolean v0, Lcom/oplus/camera/Camera;->l:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2480
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->L()V

    return v1

    :cond_0
    const/4 v0, 0x2

    .line 2485
    iget v2, p0, Lcom/oplus/camera/timelapsepro/h;->z:I

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    .line 2486
    invoke-virtual {p0, v0}, Lcom/oplus/camera/timelapsepro/h;->b(I)V

    .line 2487
    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/h;->h:Landroid/os/ConditionVariable;

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->close()V

    .line 2489
    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/h;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    const v4, 0x7f1001c5

    .line 2490
    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_time_lapse_pro_focus_mode_key"

    .line 2489
    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oplus/camera/timelapsepro/h;->ah:Ljava/lang/String;

    .line 2492
    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/h;->v:Ljava/lang/Object;

    monitor-enter v2

    .line 2493
    :try_start_0
    iput v1, p0, Lcom/oplus/camera/timelapsepro/h;->y:I

    .line 2494
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2496
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/h;->isSloganOpen()Z

    move-result v1

    iput-boolean v1, p0, Lcom/oplus/camera/timelapsepro/h;->aF:Z

    .line 2498
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/oplus/camera/timelapsepro/h;->A:J

    .line 2500
    new-instance v1, Lcom/oplus/camera/timelapsepro/-$$Lambda$h$sEhwRZ2hZz3W7b-3_RWH9jBE09M;

    invoke-direct {v1, p0}, Lcom/oplus/camera/timelapsepro/-$$Lambda$h$sEhwRZ2hZz3W7b-3_RWH9jBE09M;-><init>(Lcom/oplus/camera/timelapsepro/h;)V

    invoke-direct {p0, v1}, Lcom/oplus/camera/timelapsepro/h;->a(Ljava/lang/Runnable;)V

    return v0

    :catchall_0
    move-exception p0

    .line 2494
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    return v1
.end method

.method private I()V
    .locals 4

    .line 2546
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->K()Z

    .line 2548
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->aI()V

    .line 2550
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->X()V

    .line 2551
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->Y()V

    .line 2553
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->h()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-direct {p0, v2, v1, v0}, Lcom/oplus/camera/timelapsepro/h;->a(ZZZ)V

    .line 2554
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->h()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-direct {p0, v2, v1, v0}, Lcom/oplus/camera/timelapsepro/h;->b(ZZZ)V

    .line 2555
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->O(Z)V

    .line 2557
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v1, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->u(ZZ)V

    .line 2559
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->e()Lcom/oplus/camera/timelapsepro/c;

    move-result-object v0

    iget v3, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraId:I

    invoke-virtual {v0, v3}, Lcom/oplus/camera/timelapsepro/c;->a(I)V

    .line 2561
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v3, 0x4

    invoke-interface {v0, v3}, Lcom/oplus/camera/capmode/a;->c(I)V

    .line 2562
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->L()V

    .line 2564
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const-string v3, "normal"

    invoke-interface {v0, v3}, Lcom/oplus/camera/capmode/a;->a(Ljava/lang/String;)V

    .line 2566
    iget v0, p0, Lcom/oplus/camera/timelapsepro/h;->I:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/oplus/camera/timelapsepro/h;->K:Z

    return-void
.end method

.method private J()V
    .locals 3

    .line 2570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopRecording, mRecorderStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/timelapsepro/h;->z:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TimeLapseProMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2572
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->s:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x65

    .line 2573
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2576
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_1

    .line 2577
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/oplus/camera/capmode/a;->c(I)V

    .line 2580
    :cond_1
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->K()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    .line 2581
    iput-boolean v0, p0, Lcom/oplus/camera/timelapsepro/h;->S:Z

    const/4 v0, 0x0

    .line 2582
    iput-boolean v0, p0, Lcom/oplus/camera/timelapsepro/h;->av:Z

    .line 2583
    invoke-direct {p0, v0}, Lcom/oplus/camera/timelapsepro/h;->c(I)V

    .line 2584
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2586
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_2

    .line 2587
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->W()V

    :cond_2
    const/4 v0, 0x3

    .line 2590
    invoke-virtual {p0, v0}, Lcom/oplus/camera/timelapsepro/h;->b(I)V

    .line 2592
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->ah:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2593
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->ah:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/timelapsepro/h;->b(Ljava/lang/String;)V

    .line 2596
    :cond_3
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->s:Landroid/os/Handler;

    if-eqz p0, :cond_4

    const/16 v0, 0x68

    .line 2597
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_4
    return-void
.end method

.method private K()Z
    .locals 2

    .line 2603
    iget v0, p0, Lcom/oplus/camera/timelapsepro/h;->z:I

    const/4 v1, 0x3

    if-eq v1, v0, :cond_1

    const/4 v0, 0x2

    iget p0, p0, Lcom/oplus/camera/timelapsepro/h;->z:I

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private L()V
    .locals 2

    const-string v0, "TimeLapseProMode"

    const-string v1, "showLowBatteryHint"

    .line 2607
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2609
    iget-boolean v0, p0, Lcom/oplus/camera/timelapsepro/h;->mbPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2610
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/oplus/camera/timelapsepro/-$$Lambda$h$jN7NkrjgkS7ZaKFUTdxmUe8HNyg;

    invoke-direct {v1, p0}, Lcom/oplus/camera/timelapsepro/-$$Lambda$h$jN7NkrjgkS7ZaKFUTdxmUe8HNyg;-><init>(Lcom/oplus/camera/timelapsepro/h;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private M()Z
    .locals 2

    .line 2683
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 2684
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mPreferences:Landroid/content/SharedPreferences;

    const-string v0, "pref_switch_camera_key"

    const-string v1, "camera_main"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "camera_macro"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private N()V
    .locals 2

    .line 2876
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->R:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2878
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->R:Ljava/util/List;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/timelapsepro/a/c;

    .line 2880
    invoke-virtual {v0}, Lcom/oplus/camera/timelapsepro/a/c;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2881
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->J:Lcom/oplus/camera/timelapsepro/g;

    if-eqz v0, :cond_0

    .line 2882
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->J:Lcom/oplus/camera/timelapsepro/g;

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/g;->p()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2886
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private O()V
    .locals 0

    return-void
.end method

.method private P()V
    .locals 0

    return-void
.end method

.method private Q()V
    .locals 0

    return-void
.end method

.method private R()V
    .locals 1

    const/4 v0, 0x1

    .line 3020
    invoke-direct {p0, v0}, Lcom/oplus/camera/timelapsepro/h;->i(Z)V

    return-void
.end method

.method private S()V
    .locals 8

    .line 3242
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10021d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3243
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10013e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3244
    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10050a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3245
    iget-object v3, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1001c5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3246
    iget-object v4, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f10013b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3248
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "logParameters, mPreferences: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/oplus/camera/timelapsepro/h;->mPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", speed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/oplus/camera/timelapsepro/h;->i:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", frames: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/oplus/camera/timelapsepro/h;->k:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", ISO: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/oplus/camera/timelapsepro/h;->mPreferences:Landroid/content/SharedPreferences;

    const-string v7, "pref_time_lapse_pro_iso_key"

    .line 3251
    invoke-interface {v6, v7, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", shutter: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mPreferences:Landroid/content/SharedPreferences;

    const-string v6, "pref_time_lapse_pro_exposure_time_key"

    .line 3252
    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", ev: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_time_lapse_pro_exposure_compensation_key"

    .line 3253
    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", focus: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_time_lapse_pro_focus_mode_key"

    .line 3254
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", wb: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mPreferences:Landroid/content/SharedPreferences;

    const-string v0, "pref_time_lapse_pro_whitebalance_key"

    .line 3255
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TimeLapseProMode"

    .line 3248
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private T()V
    .locals 4

    .line 3259
    iget-boolean v0, p0, Lcom/oplus/camera/timelapsepro/h;->S:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3260
    iput-boolean v1, p0, Lcom/oplus/camera/timelapsepro/h;->S:Z

    .line 3262
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_0

    .line 3263
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->N()V

    .line 3267
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 3268
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->u(ZZ)V

    .line 3269
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->d(ZZ)V

    .line 3270
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->P(Z)V

    .line 3271
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->N(Z)V

    .line 3274
    :cond_1
    iget-boolean v0, p0, Lcom/oplus/camera/timelapsepro/h;->mbFrontCamera:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_5

    .line 3275
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->h()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-direct {p0, v2, v2, v0}, Lcom/oplus/camera/timelapsepro/h;->a(ZZZ)V

    .line 3276
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->h()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-direct {p0, v2, v2, v0}, Lcom/oplus/camera/timelapsepro/h;->b(ZZZ)V

    .line 3278
    iget-boolean v0, p0, Lcom/oplus/camera/timelapsepro/h;->M:Z

    if-eqz v0, :cond_2

    .line 3279
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->aH()V

    .line 3280
    iput-boolean v1, p0, Lcom/oplus/camera/timelapsepro/h;->M:Z

    .line 3283
    :cond_2
    iget v0, p0, Lcom/oplus/camera/timelapsepro/h;->I:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    .line 3284
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->h()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->f()Z

    move-result v3

    if-nez v3, :cond_3

    move v1, v2

    :cond_3
    invoke-interface {v0, v2, v1}, Lcom/oplus/camera/capmode/a;->a(ZZ)V

    goto :goto_0

    .line 3286
    :cond_4
    iput-boolean v2, p0, Lcom/oplus/camera/timelapsepro/h;->M:Z

    .line 3290
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->J:Lcom/oplus/camera/timelapsepro/g;

    if-eqz v0, :cond_6

    .line 3291
    invoke-virtual {v0}, Lcom/oplus/camera/timelapsepro/g;->h()V

    .line 3294
    :cond_6
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->s()V

    return-void
.end method

.method private U()V
    .locals 9

    .line 3317
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    return-void

    .line 3321
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    .line 3322
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10013e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "pref_time_lapse_pro_exposure_time_key"

    .line 3321
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3323
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    .line 3324
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10021d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "pref_time_lapse_pro_iso_key"

    .line 3323
    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "pref_switch_camera_key"

    .line 3326
    invoke-virtual {p0, v3}, Lcom/oplus/camera/timelapsepro/h;->getSupportFunction(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "pref_camera_flashmode_key"

    .line 3327
    invoke-virtual {p0, v5}, Lcom/oplus/camera/timelapsepro/h;->getSupportFunction(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    .line 3328
    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    .line 3329
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3330
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "camera_main"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3331
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/h;->getFlashMode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.oplus.feature.flash.full.zoom.support"

    .line 3333
    invoke-static {v3}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v8, "off"

    if-eqz v3, :cond_4

    const-string v1, "camera_tele"

    .line 3334
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "auto"

    const-string v3, "on"

    if-eqz v0, :cond_3

    .line 3335
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3336
    :cond_1
    iput-boolean v7, p0, Lcom/oplus/camera/timelapsepro/h;->mbFlashTemporaryDisabled:Z

    .line 3337
    invoke-virtual {p0, v8}, Lcom/oplus/camera/timelapsepro/h;->updateFlashState(Ljava/lang/String;)V

    .line 3338
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v5, v8}, Lcom/oplus/camera/ui/CameraUIInterface;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3341
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->b(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 3344
    :cond_3
    iput-boolean v6, p0, Lcom/oplus/camera/timelapsepro/h;->mbFlashTemporaryDisabled:Z

    .line 3345
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 3347
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v5, v4}, Lcom/oplus/camera/ui/CameraUIInterface;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3348
    invoke-virtual {p0, v2}, Lcom/oplus/camera/timelapsepro/h;->updateFlashState(Ljava/lang/String;)V

    goto :goto_0

    .line 3351
    :cond_4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3352
    iput-boolean v6, p0, Lcom/oplus/camera/timelapsepro/h;->mbFlashTemporaryDisabled:Z

    .line 3353
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/h;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/timelapsepro/h;->updateFlashState(Ljava/lang/String;)V

    .line 3354
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v5, v4}, Lcom/oplus/camera/ui/CameraUIInterface;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3356
    :cond_5
    iput-boolean v7, p0, Lcom/oplus/camera/timelapsepro/h;->mbFlashTemporaryDisabled:Z

    .line 3357
    invoke-virtual {p0, v8}, Lcom/oplus/camera/timelapsepro/h;->updateFlashState(Ljava/lang/String;)V

    .line 3358
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v5, v8}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3363
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v5}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method private V()V
    .locals 6

    .line 3368
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    const v2, 0x7f1001bb

    .line 3369
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_flashmode_key"

    .line 3368
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    .line 3371
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3372
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    .line 3373
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10013e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "pref_time_lapse_pro_exposure_time_key"

    .line 3372
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3374
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    .line 3375
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10021d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "pref_time_lapse_pro_iso_key"

    .line 3374
    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3377
    iget-object v3, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3380
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private W()V
    .locals 3

    .line 3403
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    const v2, 0x7f1001bb

    .line 3404
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_flashmode_key"

    .line 3403
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    .line 3406
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3407
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3408
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3409
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3410
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private X()V
    .locals 2

    .line 3910
    new-instance v0, Landroid/content/Intent;

    const-string v1, "oplus.multimedia.soundrecorder.stopRecroderNormal"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3911
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private Y()V
    .locals 2

    .line 3915
    new-instance v0, Landroid/content/Intent;

    const-string v1, "oplus.camera.record.start"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3916
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private Z()Z
    .locals 7

    const-string v0, "TimeLapseProMode"

    const-string v1, "recDisabledReturn"

    .line 3943
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3946
    iget-boolean v0, p0, Lcom/oplus/camera/timelapsepro/h;->g:Z

    if-eqz v0, :cond_0

    .line 3947
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v2, 0x7f10044a

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    const-string v0, "disable_code"

    const-string v1, "battery_video"

    .line 3949
    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/timelapsepro/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private a(FLjava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    if-eqz p2, :cond_3

    .line 2118
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    if-gtz p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    .line 2122
    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sub-float/2addr v0, p1

    .line 2123
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    move v1, v0

    move v0, p0

    .line 2126
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p0, v2, :cond_2

    .line 2127
    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    sub-float/2addr v2, p1

    .line 2129
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v1

    if-gez v3, :cond_1

    .line 2130
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    move v1, v0

    move v0, p0

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_1
    const/4 p0, -0x1

    return p0
.end method

.method private a(ILjava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    if-eqz p2, :cond_3

    .line 2076
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    if-gtz p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    .line 2080
    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sub-int/2addr v0, p1

    .line 2081
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    move v1, v0

    move v0, p0

    .line 2084
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p0, v2, :cond_2

    .line 2085
    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v2, p1

    .line 2087
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, v1, :cond_1

    .line 2088
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    move v1, v0

    move v0, p0

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_1
    const/4 p0, -0x1

    return p0
.end method

.method private a(JLjava/util/List;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    if-eqz p3, :cond_3

    .line 2097
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p0

    if-gtz p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    .line 2101
    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 2102
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    move-wide v1, v0

    move v0, p0

    .line 2105
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-ge p0, v3, :cond_2

    .line 2106
    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    sub-long/2addr v3, p1

    .line 2108
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    cmp-long v5, v5, v1

    if-gez v5, :cond_1

    .line 2109
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    move-wide v1, v0

    move v0, p0

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_1
    const/4 p0, -0x1

    return p0
.end method

.method static synthetic a(Lcom/oplus/camera/timelapsepro/h;J)J
    .locals 0

    .line 108
    iput-wide p1, p0, Lcom/oplus/camera/timelapsepro/h;->k:J

    return-wide p1
.end method

.method private a(Ljava/util/List;)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)J"
        }
    .end annotation

    .line 1504
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Size;

    .line 1505
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    .line 1506
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-long v2, p1

    mul-long/2addr v0, v2

    goto :goto_0

    .line 1510
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getMaxPictureSize, max: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TimeLapseProMode"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0
.end method

.method static synthetic a(Lcom/oplus/camera/timelapsepro/h;)Landroid/os/Handler;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->s:Landroid/os/Handler;

    return-object p0
.end method

.method private a(Lcom/oplus/camera/e/h;)Lcom/oplus/camera/timelapsepro/a/d;
    .locals 5

    .line 1401
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->w()I

    move-result v0

    .line 1402
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->u()I

    move-result v1

    .line 1403
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->v()I

    move-result p1

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-lez p1, :cond_4

    if-lez v0, :cond_4

    if-ne v0, p1, :cond_1

    goto :goto_2

    .line 1414
    :cond_1
    new-instance v1, Lcom/oplus/camera/timelapsepro/a/d;

    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/oplus/camera/timelapsepro/a/d;-><init>(Landroid/app/Activity;)V

    .line 1415
    invoke-virtual {v1}, Lcom/oplus/camera/timelapsepro/a/d;->j()Ljava/util/List;

    move-result-object v2

    .line 1416
    invoke-virtual {v1}, Lcom/oplus/camera/timelapsepro/a/d;->k()Ljava/util/List;

    move-result-object v3

    :goto_1
    if-gt v0, p1, :cond_2

    .line 1421
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1422
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x64

    goto :goto_1

    .line 1425
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mPreferences:Landroid/content/SharedPreferences;

    const/4 p1, -0x1

    const-string v0, "pref_time_lapse_pro_index_of_iso_key"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-eq p0, p1, :cond_3

    const/4 p1, 0x0

    .line 1428
    invoke-virtual {v1, p1}, Lcom/oplus/camera/timelapsepro/a/d;->a(Z)V

    .line 1429
    invoke-virtual {v1, p0}, Lcom/oplus/camera/timelapsepro/a/d;->a(I)V

    .line 1432
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "generateISOValues, param isoParameter: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/oplus/camera/timelapsepro/a/d;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TimeLapseProMode"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_4
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private a(JJ)V
    .locals 9

    const-string v0, "videoRecord"

    .line 3576
    invoke-direct {p0, v0}, Lcom/oplus/camera/timelapsepro/h;->e(Ljava/lang/String;)Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;

    move-result-object v0

    .line 3578
    iget v1, p0, Lcom/oplus/camera/timelapsepro/h;->I:I

    if-eqz v1, :cond_0

    .line 3579
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mTimeLapseType:Ljava/lang/String;

    goto/16 :goto_4

    .line 3581
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v2, -0x1

    const-string v3, "pref_time_lapse_pro_speed_key"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 3583
    iget-object v3, p0, Lcom/oplus/camera/timelapsepro/h;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "pref_time_lapse_pro_index_of_iso_key"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 3584
    iget-object v4, p0, Lcom/oplus/camera/timelapsepro/h;->mPreferences:Landroid/content/SharedPreferences;

    const-string v5, "pref_time_lapse_pro_index_of_exposure_time_key"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 3585
    iget-object v5, p0, Lcom/oplus/camera/timelapsepro/h;->mPreferences:Landroid/content/SharedPreferences;

    sget v6, Lcom/oplus/camera/timelapsepro/e;->a:I

    const-string v7, "pref_time_lapse_pro_index_of_exposure_compensation_key"

    invoke-interface {v5, v7, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 3586
    iget-object v6, p0, Lcom/oplus/camera/timelapsepro/h;->mPreferences:Landroid/content/SharedPreferences;

    const-string v7, "pref_time_lapse_pro_index_of_focus_mode_key"

    invoke-interface {v6, v7, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 3587
    iget-object v7, p0, Lcom/oplus/camera/timelapsepro/h;->mPreferences:Landroid/content/SharedPreferences;

    const-string v8, "pref_time_lapse_pro_index_of_whitebalance_key"

    invoke-interface {v7, v8, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v2, v1, :cond_1

    if-ne v2, v3, :cond_1

    if-ne v2, v4, :cond_1

    .line 3590
    sget v8, Lcom/oplus/camera/timelapsepro/e;->a:I

    if-ne v8, v5, :cond_1

    if-ne v2, v6, :cond_1

    if-ne v2, v7, :cond_1

    const-string v1, "default"

    .line 3592
    iput-object v1, v0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mTimeLapseType:Ljava/lang/String;

    goto/16 :goto_4

    :cond_1
    const-string v2, "customize"

    .line 3594
    iput-object v2, v0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mTimeLapseType:Ljava/lang/String;

    .line 3595
    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v8, 0x7f0300ac

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    if-ltz v1, :cond_2

    .line 3597
    array-length v8, v2

    if-ge v1, v8, :cond_2

    .line 3598
    aget-object v1, v2, v1

    iput-object v1, v0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mPosterizeTime:Ljava/lang/String;

    .line 3601
    :cond_2
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->R:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "auto"

    if-ltz v3, :cond_3

    .line 3602
    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/h;->R:Ljava/util/List;

    const/4 v8, 0x1

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {v2}, Lcom/oplus/camera/timelapsepro/a/e;->k()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_3

    .line 3603
    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/h;->R:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {v2}, Lcom/oplus/camera/timelapsepro/a/e;->k()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mTimeLapseISO:Ljava/lang/String;

    goto :goto_0

    .line 3605
    :cond_3
    iput-object v1, v0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mTimeLapseISO:Ljava/lang/String;

    :goto_0
    if-ltz v4, :cond_4

    .line 3608
    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/h;->R:Ljava/util/List;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {v2}, Lcom/oplus/camera/timelapsepro/a/e;->k()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v4, v2, :cond_4

    .line 3609
    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/h;->R:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {v2}, Lcom/oplus/camera/timelapsepro/a/e;->k()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mTimeLapseEXP:Ljava/lang/String;

    goto :goto_1

    .line 3611
    :cond_4
    iput-object v1, v0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mTimeLapseEXP:Ljava/lang/String;

    :goto_1
    if-ltz v5, :cond_5

    .line 3614
    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/h;->R:Ljava/util/List;

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {v2}, Lcom/oplus/camera/timelapsepro/a/e;->k()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v5, v2, :cond_5

    .line 3615
    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/h;->R:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {v2}, Lcom/oplus/camera/timelapsepro/a/e;->k()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mTimeLapseEV:Ljava/lang/String;

    goto :goto_2

    .line 3616
    :cond_5
    sget v2, Lcom/oplus/camera/timelapsepro/e;->a:I

    if-ne v2, v5, :cond_6

    .line 3617
    iput-object v1, v0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mTimeLapseEV:Ljava/lang/String;

    :cond_6
    :goto_2
    if-ltz v6, :cond_7

    .line 3620
    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/h;->R:Ljava/util/List;

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {v2}, Lcom/oplus/camera/timelapsepro/a/e;->k()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v6, v2, :cond_7

    .line 3621
    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/h;->R:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {v2}, Lcom/oplus/camera/timelapsepro/a/e;->k()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mTimeLapseFocus:Ljava/lang/String;

    goto :goto_3

    .line 3623
    :cond_7
    iput-object v1, v0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mTimeLapseFocus:Ljava/lang/String;

    :goto_3
    if-ltz v7, :cond_8

    .line 3626
    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/h;->R:Ljava/util/List;

    const/4 v3, 0x5

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {v2}, Lcom/oplus/camera/timelapsepro/a/e;->k()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v7, v2, :cond_8

    .line 3627
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->R:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {v1}, Lcom/oplus/camera/timelapsepro/a/e;->k()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mTimeLapseWB:Ljava/lang/String;

    goto :goto_4

    .line 3629
    :cond_8
    iput-object v1, v0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mTimeLapseWB:Ljava/lang/String;

    .line 3635
    :cond_9
    :goto_4
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mVideoTime:Ljava/lang/String;

    .line 3636
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mGenerateTime:Ljava/lang/String;

    .line 3637
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->ax:Ljava/lang/String;

    iput-object p1, v0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mLux:Ljava/lang/String;

    .line 3638
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->aA:Ljava/lang/String;

    iput-object p1, v0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mCct:Ljava/lang/String;

    .line 3639
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->az:Ljava/lang/String;

    iput-object p1, v0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mExp:Ljava/lang/String;

    .line 3640
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->ay:Ljava/lang/String;

    iput-object p0, v0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mIso:Ljava/lang/String;

    .line 3642
    invoke-virtual {v0}, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->report()V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 2

    .line 502
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 503
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIInterface;->p()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 505
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 509
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/h;->getDefaultAFMode()I

    move-result v0

    if-eq p1, v0, :cond_1

    const/4 p1, 0x4

    .line 510
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/h;->getDefaultAFMode()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 511
    :cond_1
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->N()V

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/timelapsepro/h;I)V
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Lcom/oplus/camera/timelapsepro/h;->d(I)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/timelapsepro/h;Ljava/lang/Runnable;)V
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Lcom/oplus/camera/timelapsepro/h;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/timelapsepro/h;Ljava/lang/String;)V
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Lcom/oplus/camera/timelapsepro/h;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/timelapsepro/h;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 108
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/timelapsepro/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/timelapsepro/h;ZZ)V
    .locals 0

    .line 108
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/timelapsepro/h;->c(ZZ)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/timelapsepro/h;ZZZZZ)V
    .locals 0

    .line 108
    invoke-direct/range {p0 .. p5}, Lcom/oplus/camera/timelapsepro/h;->a(ZZZZZ)V

    return-void
.end method

.method private a(Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;)V
    .locals 27

    move-object/from16 v8, p0

    .line 678
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getImage()[B

    move-result-object v0

    if-eqz v0, :cond_15

    const/16 v0, 0x11

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getFormat()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto/16 :goto_9

    .line 682
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getWidth()I

    move-result v15

    .line 683
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getHeight()I

    move-result v14

    .line 684
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getStride()I

    move-result v13

    .line 685
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getScanline()I

    move-result v12

    .line 686
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getOrientation()I

    move-result v11

    .line 687
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getImage()[B

    move-result-object v10

    .line 689
    iget-object v0, v8, Lcom/oplus/camera/timelapsepro/h;->an:Lcom/oplus/camera/jni/FormatConverter;

    if-nez v0, :cond_1

    .line 690
    new-instance v0, Lcom/oplus/camera/jni/FormatConverter;

    invoke-direct {v0}, Lcom/oplus/camera/jni/FormatConverter;-><init>()V

    iput-object v0, v8, Lcom/oplus/camera/timelapsepro/h;->an:Lcom/oplus/camera/jni/FormatConverter;

    .line 693
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v23

    .line 694
    iget v2, v8, Lcom/oplus/camera/timelapsepro/h;->y:I

    const-string v7, "nv21"

    move-object/from16 v0, p0

    move-object v1, v10

    move v3, v13

    move v4, v12

    move v5, v11

    move-object/from16 v6, v23

    invoke-direct/range {v0 .. v7}, Lcom/oplus/camera/timelapsepro/h;->a([BIIIILjava/lang/String;Ljava/lang/String;)V

    .line 696
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 698
    iget-boolean v0, v8, Lcom/oplus/camera/timelapsepro/h;->aq:Z

    const-string v7, "TimeLapseProMode"

    if-eqz v0, :cond_2

    iget-boolean v0, v8, Lcom/oplus/camera/timelapsepro/h;->mbFrontCamera:Z

    if-eqz v0, :cond_2

    .line 699
    invoke-static {v10, v15, v14, v13, v12}, Lcom/oplus/camera/util/Util;->a([BIIII)V

    .line 701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dealYuvByteData, mirror bitmap : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v1, v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/16 v0, 0xb4

    const/16 v26, 0x1

    if-eqz v11, :cond_9

    if-eq v11, v0, :cond_9

    .line 735
    iget-object v0, v8, Lcom/oplus/camera/timelapsepro/h;->al:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    .line 736
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v15, v14, v0}, Lcom/oplus/camera/util/Util;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v8, Lcom/oplus/camera/timelapsepro/h;->al:Landroid/graphics/Bitmap;

    .line 739
    :cond_3
    iget-object v0, v8, Lcom/oplus/camera/timelapsepro/h;->am:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4

    .line 740
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v15, v14, v0}, Lcom/oplus/camera/util/Util;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v8, Lcom/oplus/camera/timelapsepro/h;->am:Landroid/graphics/Bitmap;

    .line 743
    :cond_4
    iget-object v9, v8, Lcom/oplus/camera/timelapsepro/h;->an:Lcom/oplus/camera/jni/FormatConverter;

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x1

    const/16 v0, 0x5a

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v11, v0, :cond_5

    .line 745
    iget-boolean v0, v8, Lcom/oplus/camera/timelapsepro/h;->mbFrontCamera:Z

    if-eqz v0, :cond_6

    goto :goto_0

    :cond_5
    iget-boolean v0, v8, Lcom/oplus/camera/timelapsepro/h;->mbFrontCamera:Z

    if-eqz v0, :cond_7

    :cond_6
    move/from16 v19, v1

    goto :goto_1

    :cond_7
    :goto_0
    move/from16 v19, v2

    :goto_1
    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v3, v10

    move v10, v15

    move v6, v11

    move v11, v14

    move v1, v12

    move v12, v13

    move v2, v13

    move v13, v1

    move v5, v14

    move v14, v2

    move v4, v15

    move/from16 v16, v5

    .line 743
    invoke-virtual/range {v9 .. v22}, Lcom/oplus/camera/jni/FormatConverter;->nv21ToBitmapInit(IIIIIIIFIIIII)J

    move-result-wide v0

    .line 747
    iget-object v9, v8, Lcom/oplus/camera/timelapsepro/h;->an:Lcom/oplus/camera/jni/FormatConverter;

    const/4 v13, 0x0

    .line 748
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/timelapsepro/h;->isSloganOpen()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-boolean v2, v8, Lcom/oplus/camera/timelapsepro/h;->aF:Z

    if-eqz v2, :cond_8

    iget-object v2, v8, Lcom/oplus/camera/timelapsepro/h;->am:Landroid/graphics/Bitmap;

    goto :goto_2

    :cond_8
    iget-object v2, v8, Lcom/oplus/camera/timelapsepro/h;->al:Landroid/graphics/Bitmap;

    :goto_2
    move-object v14, v2

    move-wide v10, v0

    move-object v12, v3

    move v15, v4

    .line 747
    invoke-virtual/range {v9 .. v15}, Lcom/oplus/camera/jni/FormatConverter;->nv21ToBitmapProcess(J[BILandroid/graphics/Bitmap;I)I

    .line 749
    iget-object v2, v8, Lcom/oplus/camera/timelapsepro/h;->an:Lcom/oplus/camera/jni/FormatConverter;

    invoke-virtual {v2, v0, v1}, Lcom/oplus/camera/jni/FormatConverter;->nv21ToBitmapUnInit(J)I

    move v13, v4

    move v11, v5

    move v12, v6

    goto/16 :goto_7

    :cond_9
    move-object v3, v10

    move v6, v11

    move v1, v12

    move v2, v13

    move v5, v14

    move v4, v15

    .line 708
    iget-object v9, v8, Lcom/oplus/camera/timelapsepro/h;->al:Landroid/graphics/Bitmap;

    if-nez v9, :cond_a

    .line 709
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v4, v9}, Lcom/oplus/camera/util/Util;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, v8, Lcom/oplus/camera/timelapsepro/h;->al:Landroid/graphics/Bitmap;

    .line 712
    :cond_a
    iget-object v9, v8, Lcom/oplus/camera/timelapsepro/h;->am:Landroid/graphics/Bitmap;

    if-nez v9, :cond_b

    .line 713
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v4, v9}, Lcom/oplus/camera/util/Util;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, v8, Lcom/oplus/camera/timelapsepro/h;->am:Landroid/graphics/Bitmap;

    .line 716
    :cond_b
    iget-boolean v9, v8, Lcom/oplus/camera/timelapsepro/h;->ar:Z

    const/4 v10, 0x3

    if-nez v9, :cond_d

    .line 717
    iget-object v9, v8, Lcom/oplus/camera/timelapsepro/h;->an:Lcom/oplus/camera/jni/FormatConverter;

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x1

    if-nez v6, :cond_c

    move/from16 v19, v26

    goto :goto_3

    :cond_c
    move/from16 v19, v10

    :goto_3
    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x2

    move v10, v4

    move v11, v5

    move v12, v2

    move v13, v1

    move v14, v2

    move v15, v5

    move/from16 v16, v4

    invoke-virtual/range {v9 .. v22}, Lcom/oplus/camera/jni/FormatConverter;->nv21ToBitmapInit(IIIIIIIFIIIII)J

    move-result-wide v0

    goto :goto_5

    .line 722
    :cond_d
    iget-object v9, v8, Lcom/oplus/camera/timelapsepro/h;->an:Lcom/oplus/camera/jni/FormatConverter;

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x1

    if-ne v0, v6, :cond_e

    move/from16 v19, v26

    goto :goto_4

    :cond_e
    move/from16 v19, v10

    :goto_4
    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x2

    move v10, v4

    move v11, v5

    move v12, v2

    move v13, v1

    move v14, v2

    move v15, v5

    move/from16 v16, v4

    invoke-virtual/range {v9 .. v22}, Lcom/oplus/camera/jni/FormatConverter;->nv21ToBitmapInit(IIIIIIIFIIIII)J

    move-result-wide v0

    :goto_5
    move-wide v9, v0

    .line 728
    iget-object v0, v8, Lcom/oplus/camera/timelapsepro/h;->an:Lcom/oplus/camera/jni/FormatConverter;

    const/4 v11, 0x0

    .line 729
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/timelapsepro/h;->isSloganOpen()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-boolean v1, v8, Lcom/oplus/camera/timelapsepro/h;->aF:Z

    if-eqz v1, :cond_f

    iget-object v1, v8, Lcom/oplus/camera/timelapsepro/h;->am:Landroid/graphics/Bitmap;

    goto :goto_6

    :cond_f
    iget-object v1, v8, Lcom/oplus/camera/timelapsepro/h;->al:Landroid/graphics/Bitmap;

    :goto_6
    move-object v12, v1

    move-wide v1, v9

    move v13, v4

    move v4, v11

    move v11, v5

    move-object v5, v12

    move v12, v6

    move v6, v11

    .line 728
    invoke-virtual/range {v0 .. v6}, Lcom/oplus/camera/jni/FormatConverter;->nv21ToBitmapProcess(J[BILandroid/graphics/Bitmap;I)I

    .line 730
    iget-object v0, v8, Lcom/oplus/camera/timelapsepro/h;->an:Lcom/oplus/camera/jni/FormatConverter;

    invoke-virtual {v0, v9, v10}, Lcom/oplus/camera/jni/FormatConverter;->nv21ToBitmapUnInit(J)I

    .line 754
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dealYuvByteData, bitmap : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v1, v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/timelapsepro/h;->isSloganOpen()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/timelapsepro/h;->isSloganOpen()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-boolean v0, v8, Lcom/oplus/camera/timelapsepro/h;->aF:Z

    if-eqz v0, :cond_13

    .line 757
    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    mul-int v15, v13, v11

    mul-int/lit8 v0, v15, 0x3

    shr-int/lit8 v0, v0, 0x1

    .line 759
    new-array v14, v0, [B

    .line 760
    new-array v4, v15, [B

    .line 762
    iget-object v1, v8, Lcom/oplus/camera/timelapsepro/h;->an:Lcom/oplus/camera/jni/FormatConverter;

    if-eqz v1, :cond_12

    .line 763
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/timelapsepro/h;->isSloganOpen()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, v8, Lcom/oplus/camera/timelapsepro/h;->aF:Z

    if-eqz v0, :cond_11

    iget-object v0, v8, Lcom/oplus/camera/timelapsepro/h;->am:Landroid/graphics/Bitmap;

    goto :goto_8

    :cond_11
    iget-object v0, v8, Lcom/oplus/camera/timelapsepro/h;->al:Landroid/graphics/Bitmap;

    :goto_8
    move-object v2, v0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v3, v14

    invoke-virtual/range {v1 .. v6}, Lcom/oplus/camera/jni/FormatConverter;->argbToNv21(Landroid/graphics/Bitmap;[B[BIZ)I

    .line 765
    invoke-static {v14, v13, v11}, Lcom/oplus/camera/util/Util;->d([BII)V

    .line 770
    :cond_12
    iget v2, v8, Lcom/oplus/camera/timelapsepro/h;->y:I

    const-string v15, "nv12"

    move-object/from16 v0, p0

    move-object v1, v14

    move v3, v13

    move v4, v11

    move v5, v12

    move-object/from16 v6, v23

    move-object v11, v7

    move-object v7, v15

    invoke-direct/range {v0 .. v7}, Lcom/oplus/camera/timelapsepro/h;->a([BIIIILjava/lang/String;Ljava/lang/String;)V

    .line 771
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/timelapsepro/h;->e()Lcom/oplus/camera/timelapsepro/c;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/oplus/camera/timelapsepro/c;->a([B)V

    .line 773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dealYuvByteData, bitmap to nv12 : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v9

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/timelapsepro/h;->isSloganOpen()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/timelapsepro/h;->isSloganOpen()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-boolean v0, v8, Lcom/oplus/camera/timelapsepro/h;->aF:Z

    if-nez v0, :cond_15

    .line 777
    :cond_14
    new-instance v0, Lcom/oplus/camera/timelapsepro/-$$Lambda$h$Z5imcVS7y4bZWt645ICpcDNgN_I;

    invoke-direct {v0, v8}, Lcom/oplus/camera/timelapsepro/-$$Lambda$h$Z5imcVS7y4bZWt645ICpcDNgN_I;-><init>(Lcom/oplus/camera/timelapsepro/h;)V

    invoke-direct {v8, v0}, Lcom/oplus/camera/timelapsepro/h;->a(Ljava/lang/Runnable;)V

    :cond_15
    :goto_9
    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 1

    .line 2397
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2398
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 2

    .line 2919
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10050a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2920
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v1, -0x1

    invoke-interface {v0, v1, p2}, Lcom/oplus/camera/e/d;->a(IZ)V

    .line 2923
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->R:Ljava/util/List;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {v0}, Lcom/oplus/camera/timelapsepro/a/e;->j()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/timelapsepro/h;->a(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2925
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1, p2}, Lcom/oplus/camera/e/d;->a(IZ)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2927
    :catch_0
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {p0, p2}, Lcom/oplus/camera/e/d;->i(Z)V

    goto :goto_0

    .line 2930
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {p0, p2}, Lcom/oplus/camera/e/d;->i(Z)V

    .line 2933
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setWhiteBalance, whiteBalance: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TimeLapseProMode"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(ZZ)V
    .locals 0

    .line 460
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, p1, p2}, Lcom/oplus/camera/ui/CameraUIInterface;->s(ZZ)V

    return-void
.end method

.method private a(ZZZ)V
    .locals 1

    .line 440
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 442
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, p2, p3}, Lcom/oplus/camera/ui/CameraUIInterface;->o(ZZ)V

    goto :goto_0

    .line 444
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, p2, p3}, Lcom/oplus/camera/ui/CameraUIInterface;->p(ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(ZZZZZ)V
    .locals 2

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showMenu, show: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", showTemplate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", needAnim: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", needTranslate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", fromPause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TimeLapseProMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->f()Z

    move-result v0

    if-nez v0, :cond_0

    xor-int/lit8 v0, p1, 0x1

    .line 401
    invoke-direct {p0, v0, p3, p4}, Lcom/oplus/camera/timelapsepro/h;->a(ZZZ)V

    xor-int/lit8 v0, p1, 0x1

    .line 402
    invoke-direct {p0, v0, p3, p4}, Lcom/oplus/camera/timelapsepro/h;->b(ZZZ)V

    :cond_0
    if-eqz p2, :cond_1

    .line 406
    invoke-direct {p0, p1, p3}, Lcom/oplus/camera/timelapsepro/h;->a(ZZ)V

    goto :goto_0

    .line 408
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/oplus/camera/timelapsepro/h;->b(ZZ)V

    .line 411
    :goto_0
    iget-object p2, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz p2, :cond_4

    if-nez p5, :cond_4

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    .line 412
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->f()Z

    move-result p1

    if-nez p1, :cond_2

    .line 413
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 p1, 0x0

    invoke-interface {p0, p1, p2, p4}, Lcom/oplus/camera/capmode/a;->a(Landroid/animation/AnimatorListenerAdapter;ZZ)V

    goto :goto_1

    .line 414
    :cond_2
    iget p1, p0, Lcom/oplus/camera/timelapsepro/h;->I:I

    const/4 p3, 0x2

    if-eq p1, p3, :cond_4

    .line 415
    iget-boolean p1, p0, Lcom/oplus/camera/timelapsepro/h;->M:Z

    if-eqz p1, :cond_3

    .line 416
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->aH()V

    const/4 p1, 0x0

    .line 417
    iput-boolean p1, p0, Lcom/oplus/camera/timelapsepro/h;->M:Z

    .line 420
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1, p2, p4}, Lcom/oplus/camera/capmode/a;->a(ZZ)V

    .line 421
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0, p2}, Lcom/oplus/camera/capmode/a;->d(Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method private a([BIIIILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 839
    iget-boolean p0, p0, Lcom/oplus/camera/timelapsepro/h;->aj:Z

    if-nez p0, :cond_0

    return-void

    .line 843
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, "_"

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, p1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "_time_lapse_yuv_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".yuv"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "capture_yuv"

    .line 845
    invoke-static {p1, p2, p0}, Lcom/oplus/camera/util/Util;->a([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/timelapsepro/h;Z)Z
    .locals 0

    .line 108
    iput-boolean p1, p0, Lcom/oplus/camera/timelapsepro/h;->M:Z

    return p1
.end method

.method private synthetic aa()V
    .locals 3

    .line 3500
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->aH()V

    const/4 v0, 0x0

    .line 3501
    iput-boolean v0, p0, Lcom/oplus/camera/timelapsepro/h;->M:Z

    .line 3502
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, Lcom/oplus/camera/capmode/a;->a(ZZ)V

    .line 3503
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0, v2}, Lcom/oplus/camera/capmode/a;->d(Z)V

    return-void
.end method

.method private synthetic ab()V
    .locals 3

    .line 3459
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    new-instance v1, Lcom/oplus/camera/timelapsepro/h$7;

    invoke-direct {v1, p0}, Lcom/oplus/camera/timelapsepro/h$7;-><init>(Lcom/oplus/camera/timelapsepro/h;)V

    const/4 p0, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, p0, v2}, Lcom/oplus/camera/capmode/a;->a(Landroid/animation/AnimatorListenerAdapter;ZZ)V

    return-void
.end method

.method private synthetic ac()V
    .locals 0

    .line 2850
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->J:Lcom/oplus/camera/timelapsepro/g;

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/g;->b()V

    return-void
.end method

.method private synthetic ad()V
    .locals 2

    .line 2840
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->u(ZZ)V

    return-void
.end method

.method private synthetic ae()V
    .locals 7

    .line 2611
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_0

    .line 2612
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v2, 0x7f10044a

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    :cond_0
    return-void
.end method

.method private synthetic af()V
    .locals 10

    .line 2501
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_0

    .line 2502
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->I()V

    .line 2505
    :cond_0
    iget v0, p0, Lcom/oplus/camera/timelapsepro/h;->I:I

    if-nez v0, :cond_5

    .line 2506
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->J:Lcom/oplus/camera/timelapsepro/g;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->s:Landroid/os/Handler;

    if-eqz v1, :cond_4

    .line 2507
    invoke-virtual {v0}, Lcom/oplus/camera/timelapsepro/g;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2508
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->J:Lcom/oplus/camera/timelapsepro/g;

    invoke-virtual {v0}, Lcom/oplus/camera/timelapsepro/g;->isShown()Z

    move-result v0

    const/16 v1, 0x70

    if-eqz v0, :cond_1

    .line 2509
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->s:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 2511
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->s:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 2513
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->J:Lcom/oplus/camera/timelapsepro/g;

    invoke-virtual {v0}, Lcom/oplus/camera/timelapsepro/g;->isShown()Z

    move-result v0

    const-wide/16 v1, 0x3e8

    const/16 v3, 0x6f

    if-eqz v0, :cond_3

    .line 2514
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->s:Landroid/os/Handler;

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 2516
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->s:Landroid/os/Handler;

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 2519
    :cond_4
    iget-object v4, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v5, 0x7f100458

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-interface/range {v4 .. v9}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    goto :goto_0

    .line 2522
    :cond_5
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->l()V

    .line 2525
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->d(ZZ)V

    .line 2526
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->aZ()V

    .line 2528
    iput v2, p0, Lcom/oplus/camera/timelapsepro/h;->x:I

    .line 2529
    iput-boolean v2, p0, Lcom/oplus/camera/timelapsepro/h;->B:Z

    .line 2531
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->s:Landroid/os/Handler;

    if-eqz v0, :cond_6

    const/16 v2, 0x67

    .line 2532
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2533
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->s:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2536
    :cond_6
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic ag()V
    .locals 6

    .line 2441
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v1, 0x7f100474

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    return-void
.end method

.method private synthetic ah()V
    .locals 0

    .line 2433
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIInterface;->t()V

    return-void
.end method

.method private synthetic ai()V
    .locals 0

    .line 2370
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIInterface;->aZ()V

    return-void
.end method

.method private synthetic aj()V
    .locals 0

    .line 1797
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/h;->onVideoShutterButtonClick()V

    return-void
.end method

.method private synthetic ak()V
    .locals 1

    .line 1769
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_0

    .line 1770
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/oplus/camera/capmode/a;->e(Z)V

    :cond_0
    return-void
.end method

.method private synthetic al()V
    .locals 0

    .line 1730
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIInterface;->L()V

    return-void
.end method

.method private synthetic am()V
    .locals 1

    .line 1710
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_0

    .line 1711
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->aJ()V

    const/4 v0, 0x1

    .line 1712
    invoke-direct {p0, v0}, Lcom/oplus/camera/timelapsepro/h;->k(Z)V

    .line 1713
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->U()V

    .line 1716
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->n()V

    .line 1718
    iget v0, p0, Lcom/oplus/camera/timelapsepro/h;->I:I

    if-nez v0, :cond_1

    .line 1719
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v0, 0x7f100458

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    :cond_1
    return-void
.end method

.method private synthetic an()V
    .locals 8

    .line 1665
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oplus/camera/timelapsepro/h;->A:J

    sub-long/2addr v0, v2

    .line 1666
    iput-wide v0, p0, Lcom/oplus/camera/timelapsepro/h;->P:J

    .line 1668
    iget-wide v2, p0, Lcom/oplus/camera/timelapsepro/h;->k:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 1669
    iget-wide v2, p0, Lcom/oplus/camera/timelapsepro/h;->l:J

    sub-long/2addr v2, v0

    .line 1671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateRecordingTime, recordTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TimeLapseProMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    move-wide v0, v4

    goto :goto_0

    :cond_0
    move-wide v0, v2

    :cond_1
    :goto_0
    move-wide v3, v0

    .line 1676
    iput-wide v3, p0, Lcom/oplus/camera/timelapsepro/h;->O:J

    .line 1678
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/h;->isSloganOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/oplus/camera/timelapsepro/h;->y:I

    shr-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/oplus/camera/timelapsepro/h;->y:I

    :goto_1
    int-to-long v0, v0

    const-wide/16 v5, 0x3e8

    mul-long/2addr v0, v5

    .line 1679
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->e()Lcom/oplus/camera/timelapsepro/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/camera/timelapsepro/c;->c()I

    move-result v2

    int-to-long v5, v2

    div-long/2addr v0, v5

    iput-wide v0, p0, Lcom/oplus/camera/timelapsepro/h;->Q:J

    .line 1681
    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-wide v5, p0, Lcom/oplus/camera/timelapsepro/h;->Q:J

    iget-boolean v7, p0, Lcom/oplus/camera/timelapsepro/h;->G:Z

    invoke-interface/range {v2 .. v7}, Lcom/oplus/camera/ui/CameraUIInterface;->a(JJZ)V

    .line 1683
    iget v0, p0, Lcom/oplus/camera/timelapsepro/h;->F:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oplus/camera/timelapsepro/h;->F:I

    .line 1684
    iget v0, p0, Lcom/oplus/camera/timelapsepro/h;->F:I

    rem-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/oplus/camera/timelapsepro/h;->F:I

    .line 1686
    iget v0, p0, Lcom/oplus/camera/timelapsepro/h;->F:I

    if-nez v0, :cond_3

    .line 1687
    iget-boolean v0, p0, Lcom/oplus/camera/timelapsepro/h;->G:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/camera/timelapsepro/h;->G:Z

    :cond_3
    return-void
.end method

.method private synthetic ao()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1645
    invoke-direct {p0, v1, v1, v0}, Lcom/oplus/camera/timelapsepro/h;->a(ZZZ)V

    .line 1646
    invoke-direct {p0, v1, v1, v0}, Lcom/oplus/camera/timelapsepro/h;->b(ZZZ)V

    return-void
.end method

.method private synthetic ap()V
    .locals 0

    .line 1219
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->p()V

    return-void
.end method

.method private synthetic aq()V
    .locals 1

    .line 778
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->W:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 779
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->o()V

    .line 782
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->X:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 783
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->al:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/timelapsepro/h;)J
    .locals 2

    .line 108
    iget-wide v0, p0, Lcom/oplus/camera/timelapsepro/h;->k:J

    return-wide v0
.end method

.method static synthetic b(Lcom/oplus/camera/timelapsepro/h;J)J
    .locals 0

    .line 108
    iput-wide p1, p0, Lcom/oplus/camera/timelapsepro/h;->l:J

    return-wide p1
.end method

.method private b(Lcom/oplus/camera/e/h;)Lcom/oplus/camera/timelapsepro/a/h;
    .locals 18

    move-object/from16 v0, p0

    .line 1438
    new-instance v1, Lcom/oplus/camera/timelapsepro/a/h;

    iget-object v2, v0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/oplus/camera/timelapsepro/a/h;-><init>(Landroid/app/Activity;)V

    .line 1439
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/camera/e/h;->y()J

    move-result-wide v2

    .line 1440
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/camera/e/h;->x()J

    move-result-wide v4

    const/16 v6, 0x100

    move-object/from16 v7, p1

    .line 1442
    invoke-virtual {v7, v6}, Lcom/oplus/camera/e/h;->a(I)Ljava/util/List;

    move-result-object v6

    .line 1443
    invoke-virtual {v1}, Lcom/oplus/camera/timelapsepro/a/h;->j()Ljava/util/List;

    move-result-object v7

    .line 1444
    invoke-virtual {v1}, Lcom/oplus/camera/timelapsepro/a/h;->k()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x1

    if-eqz v8, :cond_0

    .line 1447
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_0

    if-eqz v7, :cond_0

    .line 1449
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_0

    const/high16 v10, 0x3f800000    # 1.0f

    .line 1450
    invoke-direct {v0, v6}, Lcom/oplus/camera/timelapsepro/h;->a(Ljava/util/List;)J

    move-result-wide v11

    long-to-float v6, v11

    const-string v11, "8000000"

    invoke-static {v11}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    long-to-float v11, v11

    div-float/2addr v6, v11

    sub-float/2addr v10, v6

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v10, 0x3dcccccd    # 0.1f

    cmpg-float v6, v6, v10

    if-gtz v6, :cond_0

    .line 1452
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v9

    invoke-interface {v8, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1453
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v9

    invoke-interface {v7, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    const/4 v6, 0x0

    if-eqz v8, :cond_6

    if-eqz v7, :cond_6

    .line 1457
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const-wide/16 v11, -0x1

    .line 1462
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    const-string v14, "s"

    if-eqz v13, :cond_5

    .line 1463
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string v15, "/"

    .line 1464
    invoke-virtual {v13, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 1466
    array-length v15, v13

    const-wide v16, 0x41cdcd6500000000L    # 1.0E9

    if-le v15, v9, :cond_1

    .line 1467
    aget-object v11, v13, v6

    invoke-static {v11}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    aget-object v13, v13, v9

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    aget-object v13, v13, v6

    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    div-double/2addr v11, v13

    :goto_1
    mul-double v11, v11, v16

    double-to-long v11, v11

    goto :goto_2

    .line 1469
    :cond_1
    array-length v15, v13

    if-ne v15, v9, :cond_2

    .line 1470
    aget-object v11, v13, v6

    invoke-virtual {v11, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v6

    invoke-static {v11}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    goto :goto_1

    :cond_2
    :goto_2
    cmp-long v13, v11, v2

    if-ltz v13, :cond_4

    cmp-long v13, v11, v4

    if-lez v13, :cond_3

    goto :goto_3

    .line 1477
    :cond_3
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1475
    :cond_4
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1481
    :cond_5
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v9

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/32 v9, 0x3b9aca00

    .line 1483
    div-long/2addr v2, v9

    div-long v9, v4, v9

    cmp-long v2, v2, v9

    if-gez v2, :cond_6

    .line 1484
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1485
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1489
    :cond_6
    iget-object v0, v0, Lcom/oplus/camera/timelapsepro/h;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v2, -0x1

    const-string v3, "pref_time_lapse_pro_index_of_exposure_time_key"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_7

    .line 1492
    invoke-virtual {v1, v6}, Lcom/oplus/camera/timelapsepro/a/h;->a(Z)V

    .line 1493
    invoke-virtual {v1, v0}, Lcom/oplus/camera/timelapsepro/a/h;->a(I)V

    .line 1496
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateShutterParameter, param shutterParameter: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/oplus/camera/timelapsepro/a/h;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TimeLapseProMode"

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "funcKey_click"

    .line 3526
    invoke-direct {p0, v0}, Lcom/oplus/camera/timelapsepro/h;->e(Ljava/lang/String;)Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;

    move-result-object p0

    .line 3527
    iput-object p1, p0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mFuncKeyId:Ljava/lang/String;

    .line 3528
    iput-object p2, p0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mFuncKeyResult:Ljava/lang/String;

    .line 3530
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->report()V

    return-void
.end method

.method private b(Ljava/lang/String;Z)V
    .locals 3

    const v0, 0x7f10021d

    if-nez p1, :cond_0

    .line 2952
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    .line 2953
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_time_lapse_pro_iso_key"

    .line 2952
    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2958
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "TimeLapseProMode"

    if-eqz v0, :cond_1

    .line 2959
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v0, -0x1

    invoke-interface {p0, v0, p2}, Lcom/oplus/camera/e/d;->b(IZ)V

    goto :goto_0

    .line 2961
    :cond_1
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->W()V

    .line 2962
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v0}, Lcom/oplus/camera/e/d;->r()V

    .line 2965
    :try_start_0
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0, p2}, Lcom/oplus/camera/e/d;->b(IZ)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2967
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    const-string p0, "setISOValue, format iso value error."

    .line 2969
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2973
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setISOValue, iso: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(ZZ)V
    .locals 0

    .line 464
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, p1, p2}, Lcom/oplus/camera/ui/CameraUIInterface;->t(ZZ)V

    return-void
.end method

.method private b(ZZZ)V
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 452
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, p2, p3}, Lcom/oplus/camera/ui/CameraUIInterface;->q(ZZ)V

    goto :goto_0

    .line 454
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, p2, p3}, Lcom/oplus/camera/ui/CameraUIInterface;->r(ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private c(Lcom/oplus/camera/e/h;)Lcom/oplus/camera/timelapsepro/a/b;
    .locals 7

    .line 1516
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->p()I

    move-result v0

    .line 1517
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->q()I

    move-result v1

    .line 1518
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->r()F

    move-result p1

    const-string v2, "TimeLapseProMode"

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    if-eq v1, v3, :cond_4

    :cond_0
    if-gt v0, v1, :cond_4

    const/4 v3, 0x0

    .line 1520
    invoke-static {p1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 1526
    :cond_1
    new-instance v3, Lcom/oplus/camera/timelapsepro/a/b;

    iget-object v4, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Lcom/oplus/camera/timelapsepro/a/b;-><init>(Landroid/app/Activity;)V

    const/4 v4, 0x0

    :goto_0
    if-gt v0, v1, :cond_3

    .line 1530
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 1531
    invoke-virtual {v3}, Lcom/oplus/camera/timelapsepro/a/b;->j()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1532
    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/timelapsepro/h;->a(IF)Ljava/lang/String;

    move-result-object v5

    const-string v6, "0.00"

    .line 1534
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1535
    invoke-virtual {v3}, Lcom/oplus/camera/timelapsepro/a/b;->j()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 1538
    :cond_2
    invoke-virtual {v3}, Lcom/oplus/camera/timelapsepro/a/b;->k()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1541
    :cond_3
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mPreferences:Landroid/content/SharedPreferences;

    const-string p1, "pref_time_lapse_pro_index_of_exposure_compensation_key"

    invoke-interface {p0, p1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 1542
    sput p0, Lcom/oplus/camera/timelapsepro/e;->a:I

    .line 1543
    invoke-virtual {v3, p0}, Lcom/oplus/camera/timelapsepro/a/b;->a(I)V

    .line 1545
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "generateExposureParameter, param exposureParameter: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/oplus/camera/timelapsepro/a/b;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 1521
    :cond_4
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "generateExposureCompensationValues, return, minIndex: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", maxIndex: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic c(Lcom/oplus/camera/timelapsepro/h;)Ljava/lang/String;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->i:Ljava/lang/String;

    return-object p0
.end method

.method private c(I)V
    .locals 2

    .line 2620
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mOneCamera:Lcom/oplus/camera/e/d;

    if-nez v0, :cond_0

    return-void

    .line 2624
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNightMode, nightMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TimeLapseProMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2626
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v0, p1}, Lcom/oplus/camera/e/d;->o(I)V

    .line 2627
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 2945
    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/timelapsepro/h;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 3965
    new-instance v0, Lcom/oplus/camera/statistics/model/ReminderMsgData;

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oplus/camera/statistics/model/ReminderMsgData;-><init>(Landroid/content/Context;Z)V

    .line 3967
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v1, :cond_1

    .line 3968
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    .line 3969
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/statistics/model/ReminderMsgData;->mCameraEnterType:Ljava/lang/String;

    .line 3972
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->ax()I

    move-result v1

    iput v1, v0, Lcom/oplus/camera/statistics/model/ReminderMsgData;->mCameraId:I

    :cond_1
    const-string v1, "timeLapse"

    .line 3975
    iput-object v1, v0, Lcom/oplus/camera/statistics/model/ReminderMsgData;->mCaptureMode:Ljava/lang/String;

    const/4 v1, 0x1

    .line 3976
    iput v1, v0, Lcom/oplus/camera/statistics/model/ReminderMsgData;->mCaptureType:I

    .line 3977
    iget v1, p0, Lcom/oplus/camera/timelapsepro/h;->mOrientation:I

    iput v1, v0, Lcom/oplus/camera/statistics/model/ReminderMsgData;->mOrientation:I

    .line 3978
    iput-object p1, v0, Lcom/oplus/camera/statistics/model/ReminderMsgData;->mReminderTypeValue:Ljava/lang/String;

    .line 3979
    iput-object p2, v0, Lcom/oplus/camera/statistics/model/ReminderMsgData;->mReminderCodeValue:Ljava/lang/String;

    .line 3980
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/h;->isVideoRecording()Z

    move-result p1

    iput-boolean p1, v0, Lcom/oplus/camera/statistics/model/ReminderMsgData;->mbRecording:Z

    .line 3981
    iget-boolean p0, p0, Lcom/oplus/camera/timelapsepro/h;->mbFrontCamera:Z

    if-eqz p0, :cond_2

    const-string p0, "front"

    goto :goto_0

    :cond_2
    const-string p0, "rear"

    :goto_0
    iput-object p0, v0, Lcom/oplus/camera/statistics/model/ReminderMsgData;->mRearOrFront:Ljava/lang/String;

    .line 3982
    invoke-virtual {v0}, Lcom/oplus/camera/statistics/model/ReminderMsgData;->report()V

    return-void
.end method

.method private c(Ljava/lang/String;Z)V
    .locals 4

    .line 3049
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10013e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 3050
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long p1, v2, v0

    if-eqz p1, :cond_0

    .line 3053
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->W()V

    .line 3057
    :cond_0
    iget-boolean p1, p0, Lcom/oplus/camera/timelapsepro/h;->mbFrontCamera:Z

    if-eqz p1, :cond_1

    .line 3058
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {p0, v0, v1, p2}, Lcom/oplus/camera/e/d;->a(JZ)V

    goto :goto_0

    .line 3060
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {p0, v2, v3, p2}, Lcom/oplus/camera/e/d;->a(JZ)V

    :goto_0
    return-void
.end method

.method private c(Z)V
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    .line 392
    invoke-direct/range {v0 .. v5}, Lcom/oplus/camera/timelapsepro/h;->a(ZZZZZ)V

    .line 393
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->Q(Z)V

    return-void
.end method

.method private c(ZZ)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 3113
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "showOrHideFlashIcon, enable: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isOpenFlash: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/h;->isOpenFlash()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TimeLapseProMode"

    invoke-static {v0, p2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 3116
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/h;->displayScreenHintIconInSwitchOn()V

    goto :goto_0

    .line 3118
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-interface {p0, p2, p1, p2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZ)V

    :goto_0
    return-void
.end method

.method private d(Lcom/oplus/camera/e/h;)Lcom/oplus/camera/timelapsepro/a/c;
    .locals 11

    .line 1564
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->n()F

    move-result v0

    .line 1565
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->m()F

    move-result p1

    cmpg-float v1, v0, p1

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    move v10, v0

    move v0, p1

    move p1, v10

    :goto_0
    const/4 v1, 0x0

    .line 1573
    invoke-static {p1, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v2, v1

    const-string v2, "TimeLapseProMode"

    if-lez v1, :cond_4

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_2

    :cond_1
    sub-float v1, p1, v0

    const/high16 v3, 0x42480000    # 50.0f

    div-float/2addr v1, v3

    const v3, 0x3ca3d70a    # 0.02f

    .line 1582
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "generateFocusValues, farFocusDistance: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", minFocusDistance: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1585
    new-instance v0, Lcom/oplus/camera/timelapsepro/a/c;

    iget-object v4, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v4}, Lcom/oplus/camera/timelapsepro/a/c;-><init>(Landroid/app/Activity;)V

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    const/16 v6, 0x32

    if-gt v5, v6, :cond_2

    int-to-float v6, v5

    mul-float v7, v1, v6

    sub-float v7, p1, v7

    mul-float/2addr v6, v3

    .line 1590
    invoke-virtual {v0}, Lcom/oplus/camera/timelapsepro/a/c;->j()Ljava/util/List;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1591
    invoke-virtual {v0}, Lcom/oplus/camera/timelapsepro/a/c;->k()Ljava/util/List;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v9, v4

    const-string v6, "%.2f"

    invoke-static {v8, v6, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1594
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mPreferences:Landroid/content/SharedPreferences;

    const/4 p1, -0x1

    const-string v1, "pref_time_lapse_pro_index_of_focus_mode_key"

    invoke-interface {p0, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-eq p0, p1, :cond_3

    .line 1597
    invoke-virtual {v0, v4}, Lcom/oplus/camera/timelapsepro/a/c;->a(Z)V

    .line 1598
    invoke-virtual {v0, p0}, Lcom/oplus/camera/timelapsepro/a/c;->a(I)V

    .line 1601
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "generateFocusParameter, param focusParameter: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/oplus/camera/timelapsepro/a/c;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 1574
    :cond_4
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "generateFocusValues, return, minFocusDistance: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic d(Lcom/oplus/camera/timelapsepro/h;)Lcom/oplus/camera/timelapsepro/c;
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->e()Lcom/oplus/camera/timelapsepro/c;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized d(I)V
    .locals 6

    monitor-enter p0

    .line 3440
    :try_start_0
    iget v0, p0, Lcom/oplus/camera/timelapsepro/h;->I:I

    iput v0, p0, Lcom/oplus/camera/timelapsepro/h;->H:I

    .line 3441
    iput p1, p0, Lcom/oplus/camera/timelapsepro/h;->I:I

    .line 3443
    iget v0, p0, Lcom/oplus/camera/timelapsepro/h;->H:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_0

    .line 3444
    monitor-exit p0

    return-void

    .line 3447
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/oplus/camera/timelapsepro/h;->H:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    const-string v0, "15"

    .line 3448
    invoke-direct {p0, v0}, Lcom/oplus/camera/timelapsepro/h;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 3449
    :cond_1
    iget v0, p0, Lcom/oplus/camera/timelapsepro/h;->H:I

    if-ne v0, v2, :cond_2

    goto :goto_0

    .line 3450
    :cond_2
    iget v0, p0, Lcom/oplus/camera/timelapsepro/h;->H:I

    if-ne v0, v1, :cond_3

    const-string v0, "15"

    .line 3451
    invoke-direct {p0, v0}, Lcom/oplus/camera/timelapsepro/h;->d(Ljava/lang/String;)V

    :cond_3
    :goto_0
    if-ne p1, v3, :cond_4

    .line 3455
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1006c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/camera/timelapsepro/h;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    if-ne p1, v2, :cond_6

    .line 3458
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3459
    new-instance v0, Lcom/oplus/camera/timelapsepro/-$$Lambda$h$WOzPRCV2xREsRp7ujOoJiSrJtHU;

    invoke-direct {v0, p0}, Lcom/oplus/camera/timelapsepro/-$$Lambda$h$WOzPRCV2xREsRp7ujOoJiSrJtHU;-><init>(Lcom/oplus/camera/timelapsepro/h;)V

    invoke-direct {p0, v0}, Lcom/oplus/camera/timelapsepro/h;->a(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 3467
    :cond_5
    iput-boolean v3, p0, Lcom/oplus/camera/timelapsepro/h;->M:Z

    .line 3468
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->aH()V

    goto :goto_1

    :cond_6
    if-ne p1, v1, :cond_7

    .line 3472
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1006c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/camera/timelapsepro/h;->d(Ljava/lang/String;)V

    :cond_7
    :goto_1
    const/4 v0, 0x4

    if-eqz p1, :cond_9

    .line 3476
    iget v1, p0, Lcom/oplus/camera/timelapsepro/h;->H:I

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->R:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 3477
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->R:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {v1}, Lcom/oplus/camera/timelapsepro/a/e;->k()Ljava/util/List;

    move-result-object v1

    const-string v4, "0.96"

    invoke-interface {v1, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 3478
    iget-object v4, p0, Lcom/oplus/camera/timelapsepro/h;->R:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {v0}, Lcom/oplus/camera/timelapsepro/a/e;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3479
    invoke-virtual {p0, v0}, Lcom/oplus/camera/timelapsepro/h;->b(Ljava/lang/String;)V

    :cond_8
    const-wide/16 v0, 0x0

    .line 3482
    iput-wide v0, p0, Lcom/oplus/camera/timelapsepro/h;->k:J

    goto :goto_2

    .line 3484
    :cond_9
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v1}, Lcom/oplus/camera/e/d;->p()I

    move-result v1

    if-eq v0, v1, :cond_a

    .line 3485
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->mOneCamera:Lcom/oplus/camera/e/d;

    .line 3486
    invoke-static {}, Lcom/oplus/camera/a;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v4

    invoke-static {}, Lcom/oplus/camera/a;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v5

    .line 3485
    invoke-interface {v1, v0, v4, v5, v3}, Lcom/oplus/camera/e/d;->a(I[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;Z)V

    .line 3487
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    .line 3490
    :cond_a
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v1}, Lcom/oplus/camera/e/d;->p()I

    move-result v1

    if-eq v0, v1, :cond_b

    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mOneCamera:Lcom/oplus/camera/e/d;

    .line 3491
    invoke-interface {v0}, Lcom/oplus/camera/e/d;->p()I

    move-result v0

    if-ne v3, v0, :cond_c

    .line 3492
    :cond_b
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->N()V

    .line 3496
    :cond_c
    :goto_2
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->f()Z

    move-result v0

    if-eqz v0, :cond_d

    if-eq p1, v2, :cond_d

    iget v0, p0, Lcom/oplus/camera/timelapsepro/h;->H:I

    if-ne v0, v2, :cond_d

    .line 3499
    new-instance v0, Lcom/oplus/camera/timelapsepro/-$$Lambda$h$MaLPRVl6_CGT3xa2Ui9kG3jjUmc;

    invoke-direct {v0, p0}, Lcom/oplus/camera/timelapsepro/-$$Lambda$h$MaLPRVl6_CGT3xa2Ui9kG3jjUmc;-><init>(Lcom/oplus/camera/timelapsepro/h;)V

    invoke-direct {p0, v0}, Lcom/oplus/camera/timelapsepro/h;->a(Ljava/lang/Runnable;)V

    :cond_d
    if-ne p1, v2, :cond_e

    goto :goto_3

    :cond_e
    const/4 v3, 0x0

    .line 3507
    :goto_3
    invoke-direct {p0, v3}, Lcom/oplus/camera/timelapsepro/h;->d(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3508
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private d(Ljava/lang/String;)V
    .locals 4

    .line 3433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRecordSpeed, speed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TimeLapseProMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3435
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->i:Ljava/lang/String;

    .line 3436
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->i:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->e()Lcom/oplus/camera/timelapsepro/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/timelapsepro/c;->c()I

    move-result p1

    int-to-long v2, p1

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/oplus/camera/timelapsepro/h;->j:J

    return-void
.end method

.method private d(Ljava/lang/String;Z)V
    .locals 4

    .line 3065
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 3066
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFlashModeMenuEnable, exposureTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mDisPlayFlashIcon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TimeLapseProMode"

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3068
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3070
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "pref_camera_flashmode_key"

    if-nez v1, :cond_0

    .line 3071
    :try_start_1
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v1, :cond_1

    .line 3072
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 3073
    invoke-direct {p0, v1, p2}, Lcom/oplus/camera/timelapsepro/h;->c(ZZ)V

    goto :goto_0

    .line 3076
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 3077
    invoke-direct {p0, v1, p2}, Lcom/oplus/camera/timelapsepro/h;->c(ZZ)V

    .line 3078
    iget-object p2, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const-string v1, "off"

    invoke-interface {p2, v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 3083
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 3085
    iget-object p2, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    if-eqz p2, :cond_1

    .line 3086
    iget-object p2, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/oplus/camera/timelapsepro/h$6;

    invoke-direct {v1, p0, p1, v0}, Lcom/oplus/camera/timelapsepro/h$6;-><init>(Lcom/oplus/camera/timelapsepro/h;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p2, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private d(Z)V
    .locals 1

    .line 1193
    iput-boolean p1, p0, Lcom/oplus/camera/timelapsepro/h;->o:Z

    .line 1194
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v0, p1}, Lcom/oplus/camera/e/d;->g(Z)V

    .line 1195
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    return-void
.end method

.method static synthetic e(Lcom/oplus/camera/timelapsepro/h;)J
    .locals 2

    .line 108
    iget-wide v0, p0, Lcom/oplus/camera/timelapsepro/h;->l:J

    return-wide v0
.end method

.method private e(Ljava/lang/String;)Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;
    .locals 3

    .line 3562
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->aC:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;

    if-nez v0, :cond_0

    .line 3565
    new-instance v0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/h;->getCameraMode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 3566
    invoke-virtual {v0, p1}, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->buildEventId(Ljava/lang/String;)V

    .line 3567
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->aC:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3570
    :cond_0
    iget p0, p0, Lcom/oplus/camera/timelapsepro/h;->mOrientation:I

    iput p0, v0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mOrientation:I

    return-object v0
.end method

.method private e(Lcom/oplus/camera/e/h;)Lcom/oplus/camera/timelapsepro/a/l;
    .locals 7

    .line 1607
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->B()Ljava/util/List;

    move-result-object p1

    const-string v0, "TimeLapseProMode"

    if-eqz p1, :cond_3

    .line 1609
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_1

    .line 1615
    :cond_0
    new-instance v1, Lcom/oplus/camera/timelapsepro/a/l;

    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/oplus/camera/timelapsepro/a/l;-><init>(Landroid/app/Activity;)V

    const/4 v2, 0x0

    move v3, v2

    .line 1616
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1617
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1618
    invoke-virtual {v1}, Lcom/oplus/camera/timelapsepro/a/l;->j()Ljava/util/List;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1619
    invoke-virtual {v1}, Lcom/oplus/camera/timelapsepro/a/l;->k()Ljava/util/List;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "K"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1622
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mPreferences:Landroid/content/SharedPreferences;

    const/4 p1, -0x1

    const-string v3, "pref_time_lapse_pro_index_of_whitebalance_key"

    invoke-interface {p0, v3, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-eq p0, p1, :cond_2

    .line 1625
    invoke-virtual {v1, v2}, Lcom/oplus/camera/timelapsepro/a/l;->a(Z)V

    .line 1626
    invoke-virtual {v1, p0}, Lcom/oplus/camera/timelapsepro/a/l;->a(I)V

    .line 1629
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "generateWhiteBalanceParameter, param whiteBalanceParameter: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/oplus/camera/timelapsepro/a/l;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 1610
    :cond_3
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generateWhiteBalanceValues, return, range: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private e()Lcom/oplus/camera/timelapsepro/c;
    .locals 5

    .line 329
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->m:Lcom/oplus/camera/timelapsepro/c;

    if-nez v0, :cond_0

    .line 330
    new-instance v0, Lcom/oplus/camera/timelapsepro/c;

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    iget-object v3, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-boolean v4, p0, Lcom/oplus/camera/timelapsepro/h;->mbDisplayOnLock:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oplus/camera/timelapsepro/c;-><init>(Landroid/content/Context;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Z)V

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->m:Lcom/oplus/camera/timelapsepro/c;

    .line 331
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->m:Lcom/oplus/camera/timelapsepro/c;

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/h;->getCameraMode()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraId:I

    invoke-static {v1, v2}, Lcom/oplus/camera/g/b;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/timelapsepro/c;->a(Ljava/lang/String;)V

    .line 334
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->m:Lcom/oplus/camera/timelapsepro/c;

    return-object p0
.end method

.method private e(I)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    const-string p0, "RECORD_STOPPING"

    return-object p0

    :cond_0
    const-string p0, "RECORD_STOPPED"

    return-object p0

    :cond_1
    const-string p0, "RECORD_STARTING"

    return-object p0

    :cond_2
    const-string p0, "RECORD_STARTED"

    return-object p0
.end method

.method private e(Z)V
    .locals 1

    .line 2255
    invoke-direct {p0, p1}, Lcom/oplus/camera/timelapsepro/h;->f(Z)V

    .line 2257
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "pref_time_lapse_pro_template_key"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2258
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "pref_time_lapse_pro_sub_setting_key"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2259
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "pref_time_lapse_pro_speed_key"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2260
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "pref_time_lapse_pro_duration_key"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2262
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "pref_time_lapse_pro_iso_key"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2263
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "pref_time_lapse_pro_exposure_time_key"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2264
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "pref_time_lapse_pro_exposure_compensation_key"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2265
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "pref_time_lapse_pro_focus_mode_key"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2266
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "pref_time_lapse_pro_whitebalance_key"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2268
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "pref_time_lapse_pro_index_of_iso_key"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2269
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "pref_time_lapse_pro_index_of_exposure_time_key"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2270
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "pref_time_lapse_pro_index_of_exposure_compensation_key"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2271
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "pref_time_lapse_pro_index_of_focus_mode_key"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2272
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "pref_time_lapse_pro_index_of_whitebalance_key"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2274
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "pref_restore_time_lapse_pro_params"

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static synthetic f(Lcom/oplus/camera/timelapsepro/h;)V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->D()V

    return-void
.end method

.method private f(Z)V
    .locals 4

    .line 2278
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mOneCamera:Lcom/oplus/camera/e/d;

    if-nez v0, :cond_0

    return-void

    .line 2282
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2283
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10021d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/oplus/camera/timelapsepro/h;->b(Ljava/lang/String;Z)V

    .line 2284
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10013e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 2285
    iget-object v3, p0, Lcom/oplus/camera/timelapsepro/h;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v3, v0, v1}, Lcom/oplus/camera/e/d;->a(J)V

    .line 2286
    iget-object v3, p0, Lcom/oplus/camera/timelapsepro/h;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v3, v0, v1, v2}, Lcom/oplus/camera/e/d;->a(JZ)V

    .line 2287
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->P()V

    .line 2289
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/h;->d()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2291
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v0, v2}, Lcom/oplus/camera/e/d;->i(Z)V

    if-eqz p1, :cond_1

    .line 2294
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    .line 2297
    :cond_1
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->O()V

    .line 2298
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->Q()V

    .line 2300
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/oplus/camera/timelapsepro/h$5;

    invoke-direct {v0, p0}, Lcom/oplus/camera/timelapsepro/h$5;-><init>(Lcom/oplus/camera/timelapsepro/h;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private f()Z
    .locals 2

    .line 368
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/h;->getCurrentScreenMode()Lcom/oplus/camera/screen/b/a;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x4

    .line 371
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/h;->getCurrentScreenMode()Lcom/oplus/camera/screen/b/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/screen/b/a;->j()I

    move-result p0

    if-ne v0, p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method static synthetic g(Lcom/oplus/camera/timelapsepro/h;)V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->B()V

    return-void
.end method

.method private g(Z)V
    .locals 2

    .line 2844
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initLayoutFromPreference, haveReset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TimeLapseProMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2846
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->J:Lcom/oplus/camera/timelapsepro/g;

    if-eqz v0, :cond_4

    .line 2847
    invoke-virtual {v0}, Lcom/oplus/camera/timelapsepro/g;->a()V

    if-eqz p1, :cond_0

    .line 2850
    new-instance p1, Lcom/oplus/camera/timelapsepro/-$$Lambda$h$t76MbWmJDeUyjoPaATqYmTZAXkw;

    invoke-direct {p1, p0}, Lcom/oplus/camera/timelapsepro/-$$Lambda$h$t76MbWmJDeUyjoPaATqYmTZAXkw;-><init>(Lcom/oplus/camera/timelapsepro/h;)V

    invoke-direct {p0, p1}, Lcom/oplus/camera/timelapsepro/h;->a(Ljava/lang/Runnable;)V

    .line 2853
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v0, 0x0

    const-string v1, "pref_time_lapse_pro_template_key"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/timelapsepro/h;->I:I

    .line 2855
    iget p1, p0, Lcom/oplus/camera/timelapsepro/h;->I:I

    if-eqz p1, :cond_1

    .line 2856
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->J:Lcom/oplus/camera/timelapsepro/g;

    invoke-virtual {p1}, Lcom/oplus/camera/timelapsepro/g;->l()V

    .line 2859
    :cond_1
    iget p1, p0, Lcom/oplus/camera/timelapsepro/h;->I:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 2860
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1006c8

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/camera/timelapsepro/h;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 2862
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1006c0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/camera/timelapsepro/h;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p1, "15"

    .line 2864
    invoke-direct {p0, p1}, Lcom/oplus/camera/timelapsepro/h;->d(Ljava/lang/String;)V

    .line 2865
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->J:Lcom/oplus/camera/timelapsepro/g;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/timelapsepro/g;->a(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private g()Z
    .locals 2

    .line 376
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/h;->getCurrentScreenMode()Lcom/oplus/camera/screen/b/a;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x3

    .line 379
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/h;->getCurrentScreenMode()Lcom/oplus/camera/screen/b/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/screen/b/a;->j()I

    move-result p0

    if-ne v0, p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method static synthetic h(Lcom/oplus/camera/timelapsepro/h;)V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->A()V

    return-void
.end method

.method private h(Z)V
    .locals 3

    .line 2912
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    .line 2913
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10050a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_time_lapse_pro_whitebalance_key"

    .line 2912
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2915
    invoke-direct {p0, v0, p1}, Lcom/oplus/camera/timelapsepro/h;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private h()Z
    .locals 2

    .line 384
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/h;->getCurrentScreenMode()Lcom/oplus/camera/screen/b/a;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 387
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/h;->getCurrentScreenMode()Lcom/oplus/camera/screen/b/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/screen/b/a;->j()I

    move-result p0

    const/4 v0, 0x1

    if-ne v0, p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0
.end method

.method private i()V
    .locals 6

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calCarTemplateExposure, iso : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/timelapsepro/h;->ad:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", exposure : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oplus/camera/timelapsepro/h;->af:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TimeLapseProMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    iget v0, p0, Lcom/oplus/camera/timelapsepro/h;->ad:I

    int-to-long v2, v0

    iget-wide v4, p0, Lcom/oplus/camera/timelapsepro/h;->af:J

    mul-long/2addr v2, v4

    const-wide/32 v4, 0x4d7c6d00

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    .line 531
    div-long/2addr v2, v4

    long-to-int v0, v2

    iput v0, p0, Lcom/oplus/camera/timelapsepro/h;->ae:I

    .line 532
    iput-wide v4, p0, Lcom/oplus/camera/timelapsepro/h;->ag:J

    goto :goto_0

    :cond_0
    const-wide/32 v4, 0x3b9aca00

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    .line 534
    div-long/2addr v2, v4

    long-to-int v0, v2

    iput v0, p0, Lcom/oplus/camera/timelapsepro/h;->ae:I

    .line 535
    iput-wide v4, p0, Lcom/oplus/camera/timelapsepro/h;->ag:J

    goto :goto_0

    :cond_1
    const-wide/32 v4, 0x1dcd6500

    .line 537
    div-long/2addr v2, v4

    long-to-int v0, v2

    iput v0, p0, Lcom/oplus/camera/timelapsepro/h;->ae:I

    .line 538
    iput-wide v4, p0, Lcom/oplus/camera/timelapsepro/h;->ag:J

    .line 541
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calCarTemplateExposure, snapIso : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/camera/timelapsepro/h;->ae:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", snapExposure : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/oplus/camera/timelapsepro/h;->ag:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic i(Lcom/oplus/camera/timelapsepro/h;)V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->z()V

    return-void
.end method

.method private i(Z)V
    .locals 5

    .line 3024
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    .line 3025
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10013e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "pref_time_lapse_pro_exposure_time_key"

    .line 3024
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3026
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 3029
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    .line 3032
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->W()V

    .line 3036
    :cond_0
    iget-boolean v0, p0, Lcom/oplus/camera/timelapsepro/h;->mbFrontCamera:Z

    if-eqz v0, :cond_1

    .line 3037
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {p0, v1, v2, p1}, Lcom/oplus/camera/e/d;->a(JZ)V

    goto :goto_0

    .line 3039
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {p0, v3, v4, p1}, Lcom/oplus/camera/e/d;->a(JZ)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3042
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    const-string p0, "TimeLapseProMode"

    const-string p1, "setExposureTime, format shutter value error."

    .line 3044
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic j(Lcom/oplus/camera/timelapsepro/h;)Lcom/oplus/camera/capmode/a;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    return-object p0
.end method

.method private j()V
    .locals 1

    .line 855
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->U:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 856
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    const/4 v0, 0x0

    .line 857
    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->U:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method private j(Z)V
    .locals 4

    const/4 v0, 0x1

    const-string v1, "off"

    if-eqz p1, :cond_0

    .line 3389
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    const v3, 0x7f1001bb

    .line 3390
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_flashmode_key"

    .line 3389
    invoke-interface {p1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3391
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr v0, p1

    .line 3394
    :cond_0
    iget-boolean p1, p0, Lcom/oplus/camera/timelapsepro/h;->n:Z

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 3395
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "pref_high_resolution_key"

    .line 3396
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3397
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3398
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic k(Lcom/oplus/camera/timelapsepro/h;)Lcom/oplus/camera/e/d;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mOneCamera:Lcom/oplus/camera/e/d;

    return-object p0
.end method

.method private k()V
    .locals 1

    .line 868
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->V:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 869
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    const/4 v0, 0x0

    .line 870
    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->V:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method private k(Z)V
    .locals 4

    .line 3843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStopVideoRecording, checkRecordTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TimeLapseProMode"

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3845
    new-instance p1, Lcom/oplus/camera/ui/control/b;

    const/4 v0, 0x1

    const/4 v1, 0x6

    const-string v2, "button_color_inside_red"

    const-string v3, "button_shape_dial_rotate"

    invoke-direct {p1, v1, v2, v3, v0}, Lcom/oplus/camera/ui/control/b;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 3849
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    .line 3851
    iget-boolean p1, p0, Lcom/oplus/camera/timelapsepro/h;->mbPaused:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 3853
    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3854
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/h;->supportParameterAdjust()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz p1, :cond_0

    .line 3856
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->ac()V

    .line 3857
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v1, 0x0

    invoke-interface {p1, v1, v1}, Lcom/oplus/camera/capmode/a;->b(ZZ)V

    .line 3858
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v1, 0x3

    invoke-static {}, Lcom/oplus/camera/a;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v2

    .line 3859
    invoke-static {}, Lcom/oplus/camera/a;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v3

    .line 3858
    invoke-interface {p1, v1, v2, v3, v0}, Lcom/oplus/camera/e/d;->a(I[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;Z)V

    .line 3860
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    .line 3863
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz p1, :cond_1

    .line 3865
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {p0}, Lcom/oplus/camera/e/d;->h()V

    :cond_1
    return-void
.end method

.method static synthetic l(Lcom/oplus/camera/timelapsepro/h;)Lcom/oplus/camera/capmode/a;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    return-object p0
.end method

.method private l()V
    .locals 4

    .line 986
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->ak:Lcom/oplus/camera/ui/inverse/InverseTextView;

    if-nez v0, :cond_0

    .line 987
    new-instance v0, Lcom/oplus/camera/ui/inverse/InverseTextView;

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oplus/camera/ui/inverse/InverseTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->ak:Lcom/oplus/camera/ui/inverse/InverseTextView;

    .line 988
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->ak:Lcom/oplus/camera/ui/inverse/InverseTextView;

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06004d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setTextColor(I)V

    .line 989
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->ak:Lcom/oplus/camera/ui/inverse/InverseTextView;

    const v1, 0x7f100458

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setText(I)V

    .line 990
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->ak:Lcom/oplus/camera/ui/inverse/InverseTextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setTextSize(IF)V

    .line 991
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->ak:Lcom/oplus/camera/ui/inverse/InverseTextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setGravity(I)V

    .line 992
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->ak:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->a(Landroid/widget/TextView;)V

    .line 995
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->ap:Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v0, :cond_1

    .line 996
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070c1f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->ap:Landroid/widget/RelativeLayout$LayoutParams;

    .line 999
    :cond_1
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->m()V

    .line 1001
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    const v1, 0x7f090096

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/screen/ScreenRelativeLayout;

    .line 1003
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->ak:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/inverse/InverseTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1004
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->ak:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/inverse/InverseTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/h;->ak:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1007
    :cond_2
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->ak:Lcom/oplus/camera/ui/inverse/InverseTextView;

    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->ap:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1, p0}, Lcom/oplus/camera/screen/ScreenRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic lambda$2_omIdGNUHJS42LA31tr9SDdbHo(Lcom/oplus/camera/timelapsepro/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->aj()V

    return-void
.end method

.method public static synthetic lambda$D-qXchdN3e1Ui40DgsuuY-etDps(Lcom/oplus/camera/timelapsepro/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->am()V

    return-void
.end method

.method public static synthetic lambda$MaLPRVl6_CGT3xa2Ui9kG3jjUmc(Lcom/oplus/camera/timelapsepro/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->aa()V

    return-void
.end method

.method public static synthetic lambda$QAMmyZjm275QCBmT4EdCooYwk-g(Lcom/oplus/camera/timelapsepro/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->ad()V

    return-void
.end method

.method public static synthetic lambda$QGkaXZVl9eBYXOF5FsYnclyKk0k(Lcom/oplus/camera/timelapsepro/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->al()V

    return-void
.end method

.method public static synthetic lambda$TAXae6jkOmRWsPCwHOkTHXkNnXs(Lcom/oplus/camera/timelapsepro/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->ai()V

    return-void
.end method

.method public static synthetic lambda$WOzPRCV2xREsRp7ujOoJiSrJtHU(Lcom/oplus/camera/timelapsepro/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->ab()V

    return-void
.end method

.method public static synthetic lambda$Z5imcVS7y4bZWt645ICpcDNgN_I(Lcom/oplus/camera/timelapsepro/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->aq()V

    return-void
.end method

.method public static synthetic lambda$_yh0yvHOmBmPyCFtQSzNbCyIz-Q(Lcom/oplus/camera/timelapsepro/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->an()V

    return-void
.end method

.method public static synthetic lambda$aZCQ_5ZrV5RsebWv_dfkDQhnwww(Lcom/oplus/camera/timelapsepro/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->ah()V

    return-void
.end method

.method public static synthetic lambda$gVCRx2a1AxDvgM5yPD9nqENKKlU(Lcom/oplus/camera/timelapsepro/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->ag()V

    return-void
.end method

.method public static synthetic lambda$jN7NkrjgkS7ZaKFUTdxmUe8HNyg(Lcom/oplus/camera/timelapsepro/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->ae()V

    return-void
.end method

.method public static synthetic lambda$sEhwRZ2hZz3W7b-3_RWH9jBE09M(Lcom/oplus/camera/timelapsepro/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->af()V

    return-void
.end method

.method public static synthetic lambda$sQ-5hVbjJp12r9LYD-Y4gFSm3Gk(Lcom/oplus/camera/timelapsepro/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->ak()V

    return-void
.end method

.method public static synthetic lambda$t76MbWmJDeUyjoPaATqYmTZAXkw(Lcom/oplus/camera/timelapsepro/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->ac()V

    return-void
.end method

.method public static synthetic lambda$wpSx9MreC6R12QjfsCLm3q7-O5Q(Lcom/oplus/camera/timelapsepro/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->ap()V

    return-void
.end method

.method public static synthetic lambda$yYYb166yUrkeI7C0hNnTgPxTm-c(Lcom/oplus/camera/timelapsepro/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->ao()V

    return-void
.end method

.method static synthetic m(Lcom/oplus/camera/timelapsepro/h;)Lcom/oplus/camera/capmode/a;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    return-object p0
.end method

.method private m()V
    .locals 4

    .line 1011
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->ap:Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_4

    const/16 v1, 0xe

    .line 1012
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1014
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/h;->getCurrentScreenMode()Lcom/oplus/camera/screen/b/a;

    move-result-object v0

    const v1, 0x7f070c20

    if-nez v0, :cond_0

    .line 1017
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->ap:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    iput p0, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 1019
    :cond_0
    invoke-virtual {v0}, Lcom/oplus/camera/screen/b/a;->j()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v0, 0x4

    if-eq v2, v0, :cond_1

    .line 1033
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->ap:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    iput p0, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 1028
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->ap:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070c23

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    iput p0, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 1021
    :cond_2
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->ap:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0}, Lcom/oplus/camera/screen/b/a;->k()I

    move-result v0

    if-nez v0, :cond_3

    .line 1022
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070c21

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    goto :goto_0

    .line 1023
    :cond_3
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070c22

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    :goto_0
    iput p0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :cond_4
    :goto_1
    return-void
.end method

.method static synthetic n(Lcom/oplus/camera/timelapsepro/h;)Lcom/oplus/camera/e/d;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mOneCamera:Lcom/oplus/camera/e/d;

    return-object p0
.end method

.method private n()V
    .locals 2

    .line 1042
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->ak:Lcom/oplus/camera/ui/inverse/InverseTextView;

    if-eqz v0, :cond_0

    .line 1043
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    const v1, 0x7f090096

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/screen/ScreenRelativeLayout;

    .line 1044
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->ak:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/screen/ScreenRelativeLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 1045
    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->ak:Lcom/oplus/camera/ui/inverse/InverseTextView;

    :cond_0
    return-void
.end method

.method private o()V
    .locals 4

    .line 1050
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0900a8

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1051
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->W:Landroid/widget/RelativeLayout;

    .line 1052
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->W:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutDirection(I)V

    .line 1053
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->W:Landroid/widget/RelativeLayout;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 1055
    new-instance v1, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->X:Landroid/widget/ImageView;

    .line 1056
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->X:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1057
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->X:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 1059
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->ao:Landroid/widget/RelativeLayout$LayoutParams;

    .line 1060
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->q()V

    .line 1062
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->W:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/h;->X:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/oplus/camera/timelapsepro/h;->ao:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1063
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->W:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic o(Lcom/oplus/camera/timelapsepro/h;)V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->T()V

    return-void
.end method

.method private p()V
    .locals 2

    .line 1067
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->W:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->X:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 1068
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/h;->getCurrentScreenMode()Lcom/oplus/camera/screen/b/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->ao:Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1072
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->W:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1073
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->q()V

    .line 1074
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->W:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic p(Lcom/oplus/camera/timelapsepro/h;)V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->x()V

    return-void
.end method

.method static synthetic q(Lcom/oplus/camera/timelapsepro/h;)Landroid/os/ConditionVariable;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->h:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method private q()V
    .locals 3

    .line 1078
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->ao:Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v0, :cond_0

    return-void

    .line 1082
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->r()Landroid/graphics/Rect;

    move-result-object v0

    .line 1084
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addPreview, rect : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", l: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", t: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", r: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", b: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TimeLapseProMode"

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->ao:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1088
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->ao:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1089
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->ao:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_1
    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, v2, -0x1

    :goto_0
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1090
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->ao:Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1091
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 1093
    iget-boolean v1, p0, Lcom/oplus/camera/timelapsepro/h;->mbFrontCamera:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1094
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->ao:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v0

    iput v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_1

    .line 1096
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->ao:Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    :goto_1
    return-void
.end method

.method private r()Landroid/graphics/Rect;
    .locals 5

    .line 1101
    invoke-static {}, Lcom/oplus/camera/util/Util;->I()Landroid/util/Size;

    move-result-object v0

    .line 1103
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/h;->getCurrentScreenMode()Lcom/oplus/camera/screen/b/a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1104
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/h;->getCurrentScreenMode()Lcom/oplus/camera/screen/b/a;

    move-result-object p0

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/oplus/camera/screen/b/a;->b(II)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 1107
    :cond_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result p0

    .line 1108
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result v1

    .line 1111
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Lcom/oplus/camera/util/Util;->d(II)I

    move-result v2

    .line 1112
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v3, v0

    const/4 v0, 0x7

    const/4 v4, 0x0

    if-ne v0, v2, :cond_1

    int-to-float v0, v1

    div-float/2addr v0, v3

    .line 1115
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sub-int/2addr p0, v0

    .line 1116
    div-int/lit8 p0, p0, 0x2

    .line 1117
    new-instance v2, Landroid/graphics/Rect;

    add-int/2addr v0, p0

    invoke-direct {v2, p0, v4, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_1
    int-to-float v0, p0

    mul-float/2addr v3, v0

    .line 1119
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    sub-int/2addr v1, v0

    .line 1120
    div-int/lit8 v1, v1, 0x2

    invoke-static {v2}, Lcom/oplus/camera/screen/b/j;->c(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 1121
    new-instance v2, Landroid/graphics/Rect;

    add-int/2addr v0, v1

    invoke-direct {v2, v4, v1, p0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    return-object v2
.end method

.method static synthetic r(Lcom/oplus/camera/timelapsepro/h;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method private s()V
    .locals 3

    const-string v0, "TimeLapseProMode"

    const-string v1, "removePreview."

    .line 1128
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->Z:Landroid/renderscript/RenderScript;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1131
    iput-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->Z:Landroid/renderscript/RenderScript;

    .line 1134
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->aa:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    if-eqz v0, :cond_1

    .line 1135
    iput-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->aa:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    .line 1138
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->ab:Landroid/renderscript/Type$Builder;

    if-eqz v0, :cond_2

    .line 1139
    iput-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->ab:Landroid/renderscript/Type$Builder;

    .line 1142
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->ac:Landroid/renderscript/Type$Builder;

    if-eqz v0, :cond_3

    .line 1143
    iput-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->ac:Landroid/renderscript/Type$Builder;

    .line 1146
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->al:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 1147
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1148
    iput-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->al:Landroid/graphics/Bitmap;

    .line 1151
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->am:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 1152
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1153
    iput-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->am:Landroid/graphics/Bitmap;

    .line 1156
    :cond_5
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->W:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_7

    .line 1157
    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/h;->X:Landroid/widget/ImageView;

    if-eqz v2, :cond_6

    .line 1158
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1159
    iput-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->X:Landroid/widget/ImageView;

    .line 1162
    :cond_6
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0900a8

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1163
    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/h;->W:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1164
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->W:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1165
    iput-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->W:Landroid/widget/RelativeLayout;

    :cond_7
    return-void
.end method

.method static synthetic s(Lcom/oplus/camera/timelapsepro/h;)V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->l()V

    return-void
.end method

.method private t()I
    .locals 0

    .line 1170
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->getDefaultCaptureNumber()I

    move-result p0

    return p0
.end method

.method static synthetic t(Lcom/oplus/camera/timelapsepro/h;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->W:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic u(Lcom/oplus/camera/timelapsepro/h;)V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->o()V

    return-void
.end method

.method private u()Z
    .locals 1

    .line 1174
    iget v0, p0, Lcom/oplus/camera/timelapsepro/h;->x:I

    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->t()I

    move-result p0

    if-le v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic v(Lcom/oplus/camera/timelapsepro/h;)Landroid/widget/ImageView;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->X:Landroid/widget/ImageView;

    return-object p0
.end method

.method private v()V
    .locals 2

    .line 1240
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->s:Landroid/os/Handler;

    if-nez v0, :cond_0

    const-string v0, "TimeLapseProMode"

    const-string v1, "initTimeLapseProHandler."

    .line 1241
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TimeLapseProHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1244
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1245
    new-instance v1, Lcom/oplus/camera/timelapsepro/h$3;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/oplus/camera/timelapsepro/h$3;-><init>(Lcom/oplus/camera/timelapsepro/h;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->s:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method private w()V
    .locals 2

    .line 1334
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->s:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1335
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1336
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->s:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 1337
    iput-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->s:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method static synthetic w(Lcom/oplus/camera/timelapsepro/h;)V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->N()V

    return-void
.end method

.method static synthetic x(Lcom/oplus/camera/timelapsepro/h;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method private x()V
    .locals 3

    .line 1342
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_0

    .line 1343
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    new-instance v1, Lcom/oplus/camera/timelapsepro/h$4;

    invoke-direct {v1, p0}, Lcom/oplus/camera/timelapsepro/h$4;-><init>(Lcom/oplus/camera/timelapsepro/h;)V

    sget-object p0, Lcom/oplus/camera/gl/t$b;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v2, p0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/gl/t$b;ZZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic y(Lcom/oplus/camera/timelapsepro/h;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method private y()V
    .locals 9

    .line 1364
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->R:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1365
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->R:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/timelapsepro/a/e;

    .line 1366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initProParams, proParameter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/oplus/camera/timelapsepro/a/e;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TimeLapseProMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void

    .line 1372
    :cond_1
    iget v0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraId:I

    invoke-virtual {p0, v0}, Lcom/oplus/camera/timelapsepro/h;->getCameraInfo(I)Lcom/oplus/camera/e/h;

    move-result-object v0

    .line 1374
    new-instance v1, Lcom/oplus/camera/timelapsepro/a/f;

    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/oplus/camera/timelapsepro/a/f;-><init>(Landroid/app/Activity;)V

    .line 1375
    invoke-direct {p0, v0}, Lcom/oplus/camera/timelapsepro/h;->a(Lcom/oplus/camera/e/h;)Lcom/oplus/camera/timelapsepro/a/d;

    move-result-object v2

    .line 1376
    invoke-direct {p0, v0}, Lcom/oplus/camera/timelapsepro/h;->b(Lcom/oplus/camera/e/h;)Lcom/oplus/camera/timelapsepro/a/h;

    move-result-object v3

    .line 1377
    invoke-direct {p0, v0}, Lcom/oplus/camera/timelapsepro/h;->c(Lcom/oplus/camera/e/h;)Lcom/oplus/camera/timelapsepro/a/b;

    move-result-object v4

    .line 1378
    invoke-direct {p0, v0}, Lcom/oplus/camera/timelapsepro/h;->d(Lcom/oplus/camera/e/h;)Lcom/oplus/camera/timelapsepro/a/c;

    move-result-object v5

    .line 1379
    invoke-direct {p0, v0}, Lcom/oplus/camera/timelapsepro/h;->e(Lcom/oplus/camera/e/h;)Lcom/oplus/camera/timelapsepro/a/l;

    move-result-object v0

    if-eqz v2, :cond_3

    .line 1381
    invoke-virtual {v2}, Lcom/oplus/camera/timelapsepro/a/d;->g()Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v3, :cond_3

    .line 1382
    invoke-virtual {v3}, Lcom/oplus/camera/timelapsepro/a/h;->g()Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v5, :cond_3

    .line 1383
    invoke-virtual {v5}, Lcom/oplus/camera/timelapsepro/a/c;->g()Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v0, :cond_3

    .line 1384
    invoke-virtual {v0}, Lcom/oplus/camera/timelapsepro/a/l;->g()Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v4, :cond_3

    .line 1385
    invoke-virtual {v4}, Lcom/oplus/camera/timelapsepro/a/b;->d()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f10013b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v6, 0x1

    .line 1381
    :goto_2
    invoke-virtual {v1, v6}, Lcom/oplus/camera/timelapsepro/a/f;->b(Z)V

    .line 1388
    iget-object v6, p0, Lcom/oplus/camera/timelapsepro/h;->R:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1389
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->R:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1390
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->R:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1391
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->R:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1392
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->R:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1393
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->R:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1395
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->J:Lcom/oplus/camera/timelapsepro/g;

    if-eqz v0, :cond_4

    .line 1396
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->R:Ljava/util/List;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/timelapsepro/g;->setProParameterList(Ljava/util/List;)V

    :cond_4
    return-void
.end method

.method static synthetic z(Lcom/oplus/camera/timelapsepro/h;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method private z()V
    .locals 3

    .line 1664
    new-instance v0, Lcom/oplus/camera/timelapsepro/-$$Lambda$h$_yh0yvHOmBmPyCFtQSzNbCyIz-Q;

    invoke-direct {v0, p0}, Lcom/oplus/camera/timelapsepro/-$$Lambda$h$_yh0yvHOmBmPyCFtQSzNbCyIz-Q;-><init>(Lcom/oplus/camera/timelapsepro/h;)V

    invoke-direct {p0, v0}, Lcom/oplus/camera/timelapsepro/h;->a(Ljava/lang/Runnable;)V

    .line 1691
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->s:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/16 v0, 0x69

    const-wide/16 v1, 0x51

    .line 1692
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a(IF)Ljava/lang/String;
    .locals 3

    int-to-float p0, p1

    mul-float/2addr p0, p2

    const/4 p1, 0x0

    cmpl-float p1, p0, p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    const-string v1, "%.2f"

    if-lez p1, :cond_0

    .line 1555
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v0, p2

    invoke-static {v2, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1557
    :cond_0
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v0, p2

    invoke-static {p1, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public a()V
    .locals 0

    .line 3512
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIInterface;->ba()V

    return-void
.end method

.method public a(I)V
    .locals 1

    const-string v0, "funcValue_select"

    .line 3545
    invoke-direct {p0, v0}, Lcom/oplus/camera/timelapsepro/h;->e(Ljava/lang/String;)Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;

    move-result-object p0

    const-string v0, "84"

    .line 3546
    iput-object v0, p0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mFuncKeyId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3547
    iput-object v0, p0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mFuncKeyItem:Ljava/lang/String;

    .line 3548
    invoke-virtual {p0, p1}, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->getTemplateValue(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mFuncKeyResult:Ljava/lang/String;

    .line 3550
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->report()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "funcMenu_select"

    .line 3555
    invoke-direct {p0, v0}, Lcom/oplus/camera/timelapsepro/h;->e(Ljava/lang/String;)Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;

    move-result-object p0

    const-string v0, "85"

    .line 3556
    iput-object v0, p0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mFuncKeyId:Ljava/lang/String;

    .line 3557
    iput-object p1, p0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mFuncKeyValue:Ljava/lang/String;

    .line 3558
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->report()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "funcValue_select"

    .line 3535
    invoke-direct {p0, v0}, Lcom/oplus/camera/timelapsepro/h;->e(Ljava/lang/String;)Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;

    move-result-object p0

    const-string v0, "85"

    .line 3536
    iput-object v0, p0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mFuncKeyId:Ljava/lang/String;

    .line 3537
    iput-object p1, p0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mFuncKeyItem:Ljava/lang/String;

    .line 3538
    iput-object p2, p0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mFuncKeyResult:Ljava/lang/String;

    .line 3540
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->report()V

    return-void
.end method

.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const-string p1, "84"

    goto :goto_0

    :cond_0
    const-string p1, "85"

    :goto_0
    const-string v0, "2"

    .line 3522
    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/timelapsepro/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 2937
    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public b()V
    .locals 0

    .line 3517
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIInterface;->bb()V

    return-void
.end method

.method protected b(I)V
    .locals 2

    .line 3888
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVideoRecordState, mRecorderStatus: from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/timelapsepro/h;->z:I

    invoke-direct {p0, v1}, Lcom/oplus/camera/timelapsepro/h;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/oplus/camera/timelapsepro/h;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TimeLapseProMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3890
    iput p1, p0, Lcom/oplus/camera/timelapsepro/h;->z:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    const v0, 0x7f1001c5

    if-nez p1, :cond_0

    .line 2980
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    .line 2981
    invoke-virtual {v1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_time_lapse_pro_focus_mode_key"

    .line 2980
    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2986
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFocusValue, focusValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TimeLapseProMode"

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2988
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 2992
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->s:Landroid/os/Handler;

    if-eqz v0, :cond_2

    const/16 v1, 0x64

    .line 2993
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2994
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2995
    iput v1, v0, Landroid/os/Message;->what:I

    .line 2998
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2999
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->s:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3001
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    const-string p1, "setFocusValue, format value is error."

    .line 3003
    invoke-static {v2, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3007
    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/oplus/camera/timelapsepro/h;->n:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 3008
    invoke-direct {p0, p1}, Lcom/oplus/camera/timelapsepro/h;->j(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 2941
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {p0, p1}, Lcom/oplus/camera/e/d;->i(Z)V

    return-void
.end method

.method public beforeStartRecording()V
    .locals 5

    .line 3871
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->S()V

    .line 3873
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 3874
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->f()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->h()Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0, v2, v1, v3}, Lcom/oplus/camera/capmode/a;->a(Landroid/animation/AnimatorListenerAdapter;ZZ)V

    :cond_1
    const-string v0, "TimeLapseProMode"

    const-string v2, "beforeStartRecording"

    .line 3877
    invoke-static {v0, v2}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3878
    new-instance v0, Lcom/oplus/camera/ui/control/b;

    const/4 v2, 0x5

    const-string v3, "button_color_inside_red"

    const-string v4, "button_shape_dial_rotate"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/oplus/camera/ui/control/b;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 3882
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    .line 3884
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->beforeStartRecording()V

    return-void
.end method

.method protected burstCapture(ILcom/oplus/camera/e/c;Lcom/oplus/camera/e/d$a;)V
    .locals 7

    .line 546
    iget-boolean v0, p0, Lcom/oplus/camera/timelapsepro/h;->mbPaused:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/oplus/camera/timelapsepro/h;->mbDestroyed:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 550
    :cond_0
    iget-boolean v0, p2, Lcom/oplus/camera/e/c;->M:Z

    iput-boolean v0, p0, Lcom/oplus/camera/timelapsepro/h;->aq:Z

    .line 552
    iget v0, p0, Lcom/oplus/camera/timelapsepro/h;->x:I

    if-nez v0, :cond_1

    .line 553
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mApsDecisionResultLock:Ljava/lang/Object;

    monitor-enter v0

    .line 554
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->mDecisionResult:Lcom/oplus/camera/aps/util/CameraApsDecision;

    iput-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->D:Lcom/oplus/camera/aps/util/CameraApsDecision;

    .line 555
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 558
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/h;->needDelayCloseForCapture()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/oplus/camera/timelapsepro/h;->as:Z

    if-eqz v0, :cond_2

    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "burstCapture, catch preview "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/oplus/camera/timelapsepro/h;->af:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TimeLapseProMode"

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    iput-boolean v1, p0, Lcom/oplus/camera/timelapsepro/h;->as:Z

    .line 562
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->s:Landroid/os/Handler;

    const/16 v2, 0x6c

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 565
    :cond_2
    iget-boolean v0, p0, Lcom/oplus/camera/timelapsepro/h;->mbFrontCamera:Z

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_5

    .line 566
    iget v0, p0, Lcom/oplus/camera/timelapsepro/h;->I:I

    if-eqz v0, :cond_3

    .line 567
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->R:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 568
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->R:Ljava/util/List;

    const/4 v5, 0x4

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {v0}, Lcom/oplus/camera/timelapsepro/a/e;->k()Ljava/util/List;

    move-result-object v0

    const-string v6, "0.96"

    invoke-interface {v0, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 569
    iget-object v6, p0, Lcom/oplus/camera/timelapsepro/h;->R:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {v5}, Lcom/oplus/camera/timelapsepro/a/e;->j()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 570
    invoke-virtual {p0, v0}, Lcom/oplus/camera/timelapsepro/h;->b(Ljava/lang/String;)V

    .line 574
    :cond_3
    iget v0, p0, Lcom/oplus/camera/timelapsepro/h;->I:I

    if-ne v4, v0, :cond_5

    .line 575
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->i()V

    .line 577
    iget v0, p0, Lcom/oplus/camera/timelapsepro/h;->ae:I

    if-lez v0, :cond_4

    .line 578
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/timelapsepro/h;->b(Ljava/lang/String;Z)V

    .line 581
    :cond_4
    iget-wide v5, p0, Lcom/oplus/camera/timelapsepro/h;->ag:J

    cmp-long v0, v5, v2

    if-lez v0, :cond_5

    .line 582
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/timelapsepro/h;->c(Ljava/lang/String;Z)V

    .line 587
    :cond_5
    iget-boolean v0, p0, Lcom/oplus/camera/timelapsepro/h;->o:Z

    if-eqz v0, :cond_7

    .line 589
    iget-boolean v0, p0, Lcom/oplus/camera/timelapsepro/h;->B:Z

    if-eqz v0, :cond_6

    const/4 v0, -0x1

    goto :goto_1

    :cond_6
    iget v0, p0, Lcom/oplus/camera/timelapsepro/h;->x:I

    add-int/2addr v0, v4

    :goto_1
    iput v0, p2, Lcom/oplus/camera/e/c;->af:I

    .line 590
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v4, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZ)V

    .line 593
    :cond_7
    iget-wide v5, p0, Lcom/oplus/camera/timelapsepro/h;->N:J

    cmp-long v0, v5, v2

    if-nez v0, :cond_8

    .line 594
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oplus/camera/timelapsepro/h;->N:J

    .line 597
    :cond_8
    iput-boolean v4, p2, Lcom/oplus/camera/e/c;->ae:Z

    const/16 v0, 0x11

    .line 598
    iput v0, p2, Lcom/oplus/camera/e/c;->z:I

    .line 600
    invoke-super {p0, p1, p2, p3}, Lcom/oplus/camera/capmode/BaseMode;->burstCapture(ILcom/oplus/camera/e/c;Lcom/oplus/camera/e/d$a;)V

    .line 602
    iget-boolean p2, p0, Lcom/oplus/camera/timelapsepro/h;->o:Z

    if-nez p2, :cond_9

    .line 603
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->C()V

    .line 606
    :cond_9
    iput p1, p0, Lcom/oplus/camera/timelapsepro/h;->w:I

    .line 607
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->D:Lcom/oplus/camera/aps/util/CameraApsDecision;

    invoke-super {p0, p1, v1}, Lcom/oplus/camera/capmode/BaseMode;->getCaptureRequestTag(Lcom/oplus/camera/aps/util/CameraApsDecision;Z)Lcom/oplus/camera/e/c;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->C:Lcom/oplus/camera/e/c;

    .line 608
    iput-object p3, p0, Lcom/oplus/camera/timelapsepro/h;->E:Lcom/oplus/camera/e/d$a;

    .line 609
    iput v1, p0, Lcom/oplus/camera/timelapsepro/h;->mCaptureStartedCallbackNum:I

    :cond_a
    :goto_2
    return-void
.end method

.method protected c()Z
    .locals 0

    const-string p0, "com.oplus.feature.professional.zoom.mutex.support"

    .line 1910
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public cameraIdChanged(I)V
    .locals 0

    .line 2677
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->cameraIdChanged(I)V

    const/4 p1, 0x1

    .line 2678
    iput-boolean p1, p0, Lcom/oplus/camera/timelapsepro/h;->at:Z

    .line 2679
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->e()Lcom/oplus/camera/timelapsepro/c;

    move-result-object p1

    iget-boolean p0, p0, Lcom/oplus/camera/timelapsepro/h;->mbFrontCamera:Z

    invoke-virtual {p1, p0}, Lcom/oplus/camera/timelapsepro/c;->c(Z)V

    return-void
.end method

.method protected canShowResumeButton()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canShowTimeLapseProButtons()Z
    .locals 0

    .line 339
    iget-boolean p0, p0, Lcom/oplus/camera/timelapsepro/h;->mbFrontCamera:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public changeModeAllViewWhenAnimation(IZ)V
    .locals 0

    .line 3429
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/BaseMode;->changeModeAllViewWhenAnimation(IZ)V

    return-void
.end method

.method public d()I
    .locals 2

    .line 3013
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mPreferences:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    .line 3014
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f10013b

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "pref_time_lapse_pro_exposure_compensation_key"

    .line 3013
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3016
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public forceStopVideoRecording(Z)V
    .locals 2

    .line 3926
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/h;->isVideoRecordStarted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/h;->isVideoRecordStarting()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "TimeLapseProMode"

    const-string v1, "forceStopVideoRecording, mRecordSig.block"

    .line 3927
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3929
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->J()V

    .line 3930
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->h:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    .line 3932
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/h;->isVideoRecordStarted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3933
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->h:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->block()V

    :cond_1
    const-string v1, "forceStopVideoRecording, mRecordSig.block X"

    .line 3936
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3938
    invoke-direct {p0, p1}, Lcom/oplus/camera/timelapsepro/h;->k(Z)V

    :cond_2
    return-void
.end method

.method public getCameraMode()Ljava/lang/String;
    .locals 0

    const-string p0, "timelapsePro"

    return-object p0
.end method

.method public getCaptureExposureTime()J
    .locals 4

    .line 1944
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->E()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    .line 1950
    iget-wide v0, p0, Lcom/oplus/camera/timelapsepro/h;->r:J

    :cond_0
    return-wide v0
.end method

.method public getCaptureIso()I
    .locals 4

    .line 1930
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    .line 1931
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10021d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "pref_time_lapse_pro_iso_key"

    .line 1930
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1934
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1935
    iget p0, p0, Lcom/oplus/camera/timelapsepro/h;->q:I

    return p0

    .line 1937
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getDefaultCaptureNumber()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getFrontEnable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getHeicCodecFormat()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getHintTextId()I
    .locals 3

    .line 3708
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_5

    .line 3709
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "camera_main"

    const-string v2, "pref_switch_camera_key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3711
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const p0, 0x7f10042f

    .line 3712
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->f(I)I

    move-result p0

    return p0

    :cond_0
    const-string v1, "camera_ultra_wide"

    .line 3713
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "com.oplus.isUWFixedFocus"

    .line 3714
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mOneCamera:Lcom/oplus/camera/e/d;

    .line 3715
    invoke-interface {p0}, Lcom/oplus/camera/e/d;->e()Lcom/oplus/camera/e/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/e/h;->n()F

    move-result p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const p0, 0x7f100435

    .line 3718
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->f(I)I

    move-result p0

    return p0

    :cond_2
    :goto_0
    const p0, 0x7f100434

    .line 3716
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->f(I)I

    move-result p0

    return p0

    :cond_3
    const-string p0, "camera_tele"

    .line 3720
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const p0, 0x7f100432

    return p0

    :cond_4
    const-string p0, "camera_macro"

    .line 3722
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const p0, 0x7f10042e

    return p0

    :cond_5
    const/4 p0, -0x1

    return p0
.end method

.method public getImageFormat()I
    .locals 0

    const/16 p0, 0x23

    return p0
.end method

.method public getOperatingMode()I
    .locals 0

    const p0, 0x80a8

    return p0
.end method

.method public getPictureSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;
    .locals 1

    .line 1834
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->e()Lcom/oplus/camera/timelapsepro/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1835
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->e()Lcom/oplus/camera/timelapsepro/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/c;->b()Landroid/util/Size;

    move-result-object p0

    return-object p0

    .line 1838
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getPictureSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;
    .locals 1

    .line 1818
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;

    move-result-object v0

    .line 1820
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/h;->isVideoRecording()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    .line 1821
    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/control/b;->a(I)V

    const-string p0, "button_color_inside_none"

    .line 1822
    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/control/b;->a(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 1823
    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/control/b;->b(I)V

    goto :goto_0

    :cond_0
    const-string p0, "button_color_inside_red"

    .line 1825
    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/control/b;->a(Ljava/lang/String;)V

    :goto_0
    const-string p0, "button_shape_dial_rotate"

    .line 1828
    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/control/b;->c(Ljava/lang/String;)V

    return-object v0
.end method

.method public getSupportFunction(Ljava/lang/String;)Z
    .locals 5

    .line 2151
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const-string v2, "pref_time_lapse_pro_exposure_time_key"

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "pref_camera_tap_shutter_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "pref_none_sat_tele_angle_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "key_support_time_lapse_pro"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "pref_expand_popbar_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "pref_support_capture_preview"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "pref_time_lapse_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "pref_camera_gradienter_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "pref_switch_camera_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "pref_zoom_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "key_support_time_lapse_pro_recording_preview_freeze"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "pref_front_zoom_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "pref_camera_gesture_shutter_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "func_iot_capture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "pref_support_zoom_reinit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto :goto_1

    :sswitch_e
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto :goto_1

    :sswitch_f
    const-string v0, "pref_switch_dual_camera_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto :goto_1

    :sswitch_10
    const-string v0, "pref_camera_timer_shutter_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :sswitch_11
    const-string v0, "pref_setting_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_12
    const-string v0, "pref_watermark_function_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto :goto_1

    :sswitch_13
    const-string v0, "pref_support_post_view"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_14
    const-string v0, "pref_manual_exposure_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_15
    const-string v0, "pref_assist_gradienter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 2215
    :pswitch_0
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/h;->getCameraMode()Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraId:I

    const-string v0, "aps_algo_watermark"

    invoke-static {p1, p0, v0}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportCaptureAlgo(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_1
    return v4

    .line 2203
    :pswitch_2
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 2204
    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "key_support_update_thumbnail_user_picture"

    .line 2205
    invoke-virtual {p0, p1}, Lcom/oplus/camera/timelapsepro/h;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    return v4

    :cond_1
    return v3

    .line 2200
    :pswitch_3
    iget p1, p0, Lcom/oplus/camera/timelapsepro/h;->I:I

    if-eq p1, v1, :cond_2

    iget-boolean p0, p0, Lcom/oplus/camera/timelapsepro/h;->mbFrontCamera:Z

    if-nez p0, :cond_2

    move v3, v4

    :cond_2
    return v3

    .line 2191
    :pswitch_4
    iget-boolean p1, p0, Lcom/oplus/camera/timelapsepro/h;->au:Z

    if-eqz p1, :cond_3

    .line 2194
    iput-boolean v3, p0, Lcom/oplus/camera/timelapsepro/h;->au:Z

    :cond_3
    return p1

    .line 2188
    :pswitch_5
    iget-boolean p0, p0, Lcom/oplus/camera/timelapsepro/h;->mbFrontCamera:Z

    return p0

    .line 2178
    :pswitch_6
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_6

    .line 2179
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    .line 2180
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10013e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2179
    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2181
    iget-boolean p0, p0, Lcom/oplus/camera/timelapsepro/h;->n:Z

    if-nez p0, :cond_4

    const-wide/32 v0, 0x3b9aca00

    .line 2182
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-gtz p0, :cond_4

    move v3, v4

    :cond_4
    return v3

    .line 2175
    :pswitch_7
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/h;->isVideoRecording()Z

    move-result p1

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/oplus/camera/timelapsepro/h;->I:I

    if-eq v4, p1, :cond_5

    iget-boolean p0, p0, Lcom/oplus/camera/timelapsepro/h;->Y:Z

    if-eqz p0, :cond_5

    move v3, v4

    :cond_5
    return v3

    :pswitch_8
    return v4

    :pswitch_9
    return v3

    :pswitch_a
    return v4

    .line 2221
    :cond_6
    :goto_2
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6aa537a9 -> :sswitch_15
        -0x64edfd1c -> :sswitch_14
        -0x5f5094a8 -> :sswitch_13
        -0x5efa20f1 -> :sswitch_12
        -0x541be82c -> :sswitch_11
        -0x4f05d6eb -> :sswitch_10
        -0x4bbda787 -> :sswitch_f
        -0x2fa91455 -> :sswitch_e
        -0x2bd308dd -> :sswitch_d
        -0xf8e6ce6 -> :sswitch_c
        -0xb0f5f67 -> :sswitch_b
        -0x861d1b -> :sswitch_a
        0xca81a82 -> :sswitch_9
        0x140b168f -> :sswitch_8
        0x2de4b514 -> :sswitch_7
        0x3cbb423b -> :sswitch_6
        0x3f50f6f7 -> :sswitch_5
        0x65b53143 -> :sswitch_4
        0x78e7e46b -> :sswitch_3
        0x790725f9 -> :sswitch_2
        0x7a97ca62 -> :sswitch_1
        0x7e4b5cf3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getTouchEnable(ZII)Z
    .locals 0

    .line 349
    iget p1, p0, Lcom/oplus/camera/timelapsepro/h;->I:I

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/h;->isVideoRecording()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getZoomBarOffset()I
    .locals 0

    .line 2310
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->getZoomBarOffset()I

    move-result p0

    return p0
.end method

.method public getZoomConfigure()Lcom/oplus/camera/af;
    .locals 3

    .line 3739
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->getZoomConfigure()Lcom/oplus/camera/af;

    move-result-object v0

    .line 3741
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/h;->isHighPictureSize()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/af;->l(Z)V

    const-string v1, "pref_ultra_wide_high_picture_size_key"

    .line 3743
    invoke-virtual {p0, v1}, Lcom/oplus/camera/timelapsepro/h;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    .line 3742
    invoke-virtual {v0, v1}, Lcom/oplus/camera/af;->n(Z)V

    const-string v1, "key_support_insensor_zoom_20x"

    .line 3744
    invoke-virtual {p0, v1}, Lcom/oplus/camera/timelapsepro/h;->getSupportFunction(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oplus/camera/af;->t(Z)V

    .line 3745
    invoke-virtual {p0, v1}, Lcom/oplus/camera/timelapsepro/h;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "com.oplus.zoom.point.3x.support"

    .line 3746
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 3745
    :goto_0
    invoke-virtual {v0, p0}, Lcom/oplus/camera/af;->u(Z)V

    return-object v0
.end method

.method protected hideViewWhileResume()V
    .locals 0

    return-void
.end method

.method public isAutoFocus()Z
    .locals 4

    .line 2140
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    const v2, 0x7f1001c5

    .line 2141
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "pref_time_lapse_pro_focus_mode_key"

    .line 2140
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    .line 2142
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 2140
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isCaptureModeType()Z
    .locals 0

    .line 344
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/h;->isVideoRecording()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isInPreviewArea(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 3731
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3732
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIInterface;->p()Landroid/widget/RelativeLayout;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 3734
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, p0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method public isNeedProgressBarInCapture()Z
    .locals 4

    .line 3416
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mPreferences:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    .line 3417
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f10013e

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "pref_time_lapse_pro_exposure_time_key"

    .line 3416
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3419
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3420
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v2, 0x3b9aca00

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isShowZoomMenu()Z
    .locals 0

    .line 3758
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/h;->c()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method protected isStarVideoOpen()Z
    .locals 0

    .line 1189
    iget-boolean p0, p0, Lcom/oplus/camera/timelapsepro/h;->o:Z

    return p0
.end method

.method public isSubMenuEnable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isVideoRecordStarted()Z
    .locals 0

    .line 3779
    iget p0, p0, Lcom/oplus/camera/timelapsepro/h;->z:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isVideoRecordStarting()Z
    .locals 1

    .line 3784
    iget p0, p0, Lcom/oplus/camera/timelapsepro/h;->z:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVideoRecordStopped()Z
    .locals 1

    .line 3839
    iget p0, p0, Lcom/oplus/camera/timelapsepro/h;->z:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isVideoRecordStopping()Z
    .locals 1

    .line 3789
    iget p0, p0, Lcom/oplus/camera/timelapsepro/h;->z:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isVideoRecording()Z
    .locals 1

    .line 3774
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/h;->isVideoRecordStarted()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/h;->isVideoRecordStarting()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public needDelayCloseForCapture()Z
    .locals 4

    .line 1179
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->E()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v2, 0x3b9aca00

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/oplus/camera/timelapsepro/h;->o:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iget v1, p0, Lcom/oplus/camera/timelapsepro/h;->I:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1184
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->needDelayCloseForCapture()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public needStoreImage()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public needSurface(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "type_still_capture_jpeg"

    .line 1843
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1844
    invoke-static {}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportApsCapture()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :cond_0
    const-string v0, "type_reprocess_data_yuv"

    .line 1847
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const-string p1, "com.oplus.supernight.reprocess.extra.yuv"

    .line 1848
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p0, p0, Lcom/oplus/camera/timelapsepro/h;->mbFrontCamera:Z

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    :cond_2
    const-string v0, "type_video"

    .line 1852
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    const-string v0, "type_video_frame"

    .line 1856
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p1, "pref_watermark_function_key"

    .line 1857
    invoke-virtual {p0, p1}, Lcom/oplus/camera/timelapsepro/h;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/h;->isSloganOpen()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    return v1

    :cond_5
    const-string v0, "type_capture"

    .line 1860
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    .line 1864
    :cond_6
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->needSurface(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected onAfterPictureTaken([BZ)V
    .locals 0

    const-string p1, "TimeLapseProMode"

    const-string p2, "onAfterPictureTaken"

    .line 2654
    invoke-static {p1, p2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2656
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Lcom/oplus/camera/ui/CameraUIInterface;->d(ZZ)V

    return-void
.end method

.method public onAfterSnapping()Z
    .locals 1

    const-string p0, "TimeLapseProMode"

    const-string v0, "onAfterSnapping"

    .line 2632
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onAfterStartPreview(Z)V
    .locals 6

    const-string v0, "TimeLapseProMode"

    const-string v1, "onAfterStartPreview"

    .line 2791
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2793
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.oplus.macro.best.focus.distance"

    .line 2794
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result v0

    .line 2795
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v2, 0x7f100234

    const v3, 0x7f0604ff

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 2797
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v5, 0x0

    aput-object v0, v4, v5

    .line 2795
    invoke-interface {v1, v2, v5, v3, v4}, Lcom/oplus/camera/ui/CameraUIInterface;->b(III[Ljava/lang/Object;)V

    .line 2800
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->U()V

    .line 2802
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onAfterStartPreview(Z)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .line 2315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBackPressed, mbInCapturing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/timelapsepro/h;->mbInCapturing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TimeLapseProMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2317
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/h;->isVideoRecording()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2318
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/h;->onVideoShutterButtonClick()V

    return v1

    .line 2322
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->J:Lcom/oplus/camera/timelapsepro/g;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oplus/camera/timelapsepro/g;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 2323
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->J:Lcom/oplus/camera/timelapsepro/g;

    invoke-virtual {v0}, Lcom/oplus/camera/timelapsepro/g;->c()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oplus/camera/timelapsepro/h;->c(Z)V

    return v1

    .line 2328
    :cond_1
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method protected onBeforePictureTaken([BZ)V
    .locals 0

    const-string p0, "TimeLapseProMode"

    const-string p1, "onBeforePictureTaken"

    .line 2648
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onBeforePreview()V
    .locals 5

    .line 2807
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBeforePreview, mbCapModeInit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/timelapsepro/h;->mbCapModeInit:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TimeLapseProMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2809
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->e()Lcom/oplus/camera/timelapsepro/c;

    move-result-object v0

    iget v2, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraId:I

    invoke-virtual {v0, v2}, Lcom/oplus/camera/timelapsepro/c;->a(I)V

    .line 2811
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v2, Lcom/oplus/ocs/camera/CameraParameter;->ZOOM_RATIO:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    iget-object v3, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v3}, Lcom/oplus/camera/capmode/a;->ak()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    .line 2813
    iget-boolean v0, p0, Lcom/oplus/camera/timelapsepro/h;->mbFrontCamera:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 2814
    invoke-direct {p0, v2}, Lcom/oplus/camera/timelapsepro/h;->f(Z)V

    return-void

    .line 2819
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v3, 0x0

    const-string v4, "pref_restore_time_lapse_pro_params"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "onBeforePreview, initParamToAuto"

    .line 2820
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2823
    invoke-direct {p0, v3}, Lcom/oplus/camera/timelapsepro/h;->e(Z)V

    .line 2824
    invoke-direct {p0, v2}, Lcom/oplus/camera/timelapsepro/h;->g(Z)V

    return-void

    .line 2830
    :cond_1
    iget-boolean v0, p0, Lcom/oplus/camera/timelapsepro/h;->mbCapModeInit:Z

    if-eqz v0, :cond_3

    .line 2831
    iget-boolean v0, p0, Lcom/oplus/camera/timelapsepro/h;->at:Z

    invoke-direct {p0, v0}, Lcom/oplus/camera/timelapsepro/h;->g(Z)V

    .line 2833
    iget-boolean v0, p0, Lcom/oplus/camera/timelapsepro/h;->at:Z

    if-eqz v0, :cond_2

    .line 2834
    iput-boolean v3, p0, Lcom/oplus/camera/timelapsepro/h;->at:Z

    .line 2837
    :cond_2
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->G()V

    .line 2840
    :cond_3
    new-instance v0, Lcom/oplus/camera/timelapsepro/-$$Lambda$h$QAMmyZjm275QCBmT4EdCooYwk-g;

    invoke-direct {v0, p0}, Lcom/oplus/camera/timelapsepro/-$$Lambda$h$QAMmyZjm275QCBmT4EdCooYwk-g;-><init>(Lcom/oplus/camera/timelapsepro/h;)V

    invoke-direct {p0, v0}, Lcom/oplus/camera/timelapsepro/h;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onBeforeSnapping(Lcom/oplus/camera/e/c;)Z
    .locals 2

    .line 2424
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onBeforeSnapping, mRecorderStatus: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oplus/camera/timelapsepro/h;->z:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TimeLapseProMode"

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2426
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->F()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string p0, "onBeforeSnapping, being capture mode change!"

    .line 2427
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 2432
    :cond_0
    sget p1, Lcom/oplus/camera/Storage;->w:I

    if-eqz p1, :cond_1

    .line 2433
    new-instance p1, Lcom/oplus/camera/timelapsepro/-$$Lambda$h$aZCQ_5ZrV5RsebWv_dfkDQhnwww;

    invoke-direct {p1, p0}, Lcom/oplus/camera/timelapsepro/-$$Lambda$h$aZCQ_5ZrV5RsebWv_dfkDQhnwww;-><init>(Lcom/oplus/camera/timelapsepro/h;)V

    invoke-direct {p0, p1}, Lcom/oplus/camera/timelapsepro/h;->a(Ljava/lang/Runnable;)V

    return v1

    .line 2438
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/h;->isVideoRecording()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->P()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "onBeforeSnapping, memory or storage is not enough."

    .line 2439
    invoke-static {v0, p1}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2441
    new-instance p1, Lcom/oplus/camera/timelapsepro/-$$Lambda$h$gVCRx2a1AxDvgM5yPD9nqENKKlU;

    invoke-direct {p1, p0}, Lcom/oplus/camera/timelapsepro/-$$Lambda$h$gVCRx2a1AxDvgM5yPD9nqENKKlU;-><init>(Lcom/oplus/camera/timelapsepro/h;)V

    invoke-direct {p0, p1}, Lcom/oplus/camera/timelapsepro/h;->a(Ljava/lang/Runnable;)V

    const-string p1, "disable_code"

    const-string v0, "memory_capture"

    .line 2443
    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/timelapsepro/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 2447
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/h;->isVideoRecordStarting()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p0, "onBeforeSnapping onVideoShutterButtonClick, starting or error processing "

    .line 2448
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 2453
    :cond_3
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->Z()Z

    move-result p1

    if-eqz p1, :cond_4

    return v1

    .line 2457
    :cond_4
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/h;->setCaptureRequestPictureSizeScale()V

    .line 2459
    iget p1, p0, Lcom/oplus/camera/timelapsepro/h;->I:I

    if-nez p1, :cond_5

    .line 2460
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->ah:Ljava/lang/String;

    const-string v0, "auto"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2461
    iget p1, p0, Lcom/oplus/camera/timelapsepro/h;->ai:F

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/timelapsepro/h;->b(Ljava/lang/String;)V

    .line 2465
    :cond_5
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->h:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->close()V

    .line 2467
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->H()Z

    move-result p0

    return p0
.end method

.method public onCaptureCompleted(Lcom/oplus/camera/aps/service/CameraCaptureResult;Lcom/oplus/camera/e/c;)V
    .locals 6

    .line 1871
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1872
    sget-object v0, Lcom/oplus/camera/e/b;->U:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_0

    .line 1874
    :cond_0
    sget-object v0, Lcom/oplus/camera/e/b;->W:Landroid/hardware/camera2/CaptureResult$Key;

    .line 1877
    :goto_0
    invoke-virtual {p1}, Lcom/oplus/camera/aps/service/CameraCaptureResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/oplus/camera/timelapsepro/h;->aw:F

    .line 1879
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureCompleted, luxKey: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/camera/timelapsepro/h;->aw:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TimeLapseProMode"

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1881
    iget-boolean v0, p0, Lcom/oplus/camera/timelapsepro/h;->o:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 1883
    :try_start_0
    invoke-virtual {p1}, Lcom/oplus/camera/aps/service/CameraCaptureResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v0

    sget-object v4, Lcom/oplus/camera/e/b;->bE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v4}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1884
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, p2, Lcom/oplus/camera/e/c;->af:I

    sub-int/2addr v5, v3

    if-ne v4, v5, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    iput-boolean v4, p0, Lcom/oplus/camera/timelapsepro/h;->aB:Z

    .line 1886
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCaptureCompleted, resultFrameFlag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", requestFrameFlag: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p2, Lcom/oplus/camera/e/c;->af:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string v0, "onCaptureCompleted, do not have CameraMetadataKey.KEY_STAR_MODE_FRAME_FLAG"

    .line 1888
    invoke-static {v2, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1892
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/h;->isVideoRecordStarted()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/oplus/camera/timelapsepro/h;->I:I

    if-ne v3, v0, :cond_3

    iget v0, p0, Lcom/oplus/camera/timelapsepro/h;->aw:F

    const/high16 v2, 0x43cd0000    # 410.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    iget-boolean v0, p0, Lcom/oplus/camera/timelapsepro/h;->av:Z

    if-nez v0, :cond_3

    .line 1893
    iput-boolean v3, p0, Lcom/oplus/camera/timelapsepro/h;->av:Z

    .line 1894
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v2, 0x7f10044c

    const/16 v4, 0x1388

    new-array v5, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v4, v5}, Lcom/oplus/camera/ui/CameraUIInterface;->a(II[Ljava/lang/Object;)V

    .line 1897
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/oplus/camera/timelapsepro/h;->o:Z

    if-eqz v0, :cond_4

    .line 1898
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mOneCamera:Lcom/oplus/camera/e/d;

    iget v2, p2, Lcom/oplus/camera/e/c;->af:I

    invoke-interface {v0, v2}, Lcom/oplus/camera/e/d;->f(I)V

    .line 1901
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/oplus/camera/timelapsepro/h;->I:I

    if-ne v3, v0, :cond_5

    const/4 v0, 0x0

    .line 1902
    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/timelapsepro/h;->b(Ljava/lang/String;Z)V

    .line 1903
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10013e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/oplus/camera/timelapsepro/h;->c(Ljava/lang/String;Z)V

    .line 1906
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/BaseMode;->onCaptureCompleted(Lcom/oplus/camera/aps/service/CameraCaptureResult;Lcom/oplus/camera/e/c;)V

    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CaptureRequest;Lcom/oplus/camera/e/c;)V
    .locals 0

    .line 2643
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/BaseMode;->onCaptureFailed(Landroid/hardware/camera2/CaptureRequest;Lcom/oplus/camera/e/c;)V

    return-void
.end method

.method public onCaptureSequenceCompleted()V
    .locals 1

    .line 2333
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->onCaptureSequenceCompleted()V

    const-string p0, "TimeLapseProMode"

    const-string v0, "onCaptureSequenceCompleted"

    .line 2335
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onDeInitCameraMode(Ljava/lang/String;)V
    .locals 2

    const-string p1, "TimeLapseProMode"

    const-string v0, "onDeInitCameraMode"

    .line 2355
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2357
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->s()V

    .line 2359
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->J:Lcom/oplus/camera/timelapsepro/g;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2360
    invoke-virtual {p1, v0}, Lcom/oplus/camera/timelapsepro/g;->setTimeLapseProMenuListener(Lcom/oplus/camera/timelapsepro/g$e;)V

    .line 2361
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->J:Lcom/oplus/camera/timelapsepro/g;

    invoke-virtual {p1, v0}, Lcom/oplus/camera/timelapsepro/g;->setChangeScreenModeListener(Lcom/oplus/camera/timelapsepro/g$c;)V

    .line 2362
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->J:Lcom/oplus/camera/timelapsepro/g;

    invoke-virtual {p1, p0}, Lcom/oplus/camera/timelapsepro/g;->b(Lcom/oplus/camera/timelapsepro/g$d;)V

    .line 2363
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->J:Lcom/oplus/camera/timelapsepro/g;

    invoke-virtual {p1, v0}, Lcom/oplus/camera/timelapsepro/g;->setReportCallback(Lcom/oplus/camera/timelapsepro/g$f;)V

    .line 2366
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->M()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2367
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->w(Z)V

    .line 2370
    :cond_1
    new-instance p1, Lcom/oplus/camera/timelapsepro/-$$Lambda$h$TAXae6jkOmRWsPCwHOkTHXkNnXs;

    invoke-direct {p1, p0}, Lcom/oplus/camera/timelapsepro/-$$Lambda$h$TAXae6jkOmRWsPCwHOkTHXkNnXs;-><init>(Lcom/oplus/camera/timelapsepro/h;)V

    invoke-direct {p0, p1}, Lcom/oplus/camera/timelapsepro/h;->a(Ljava/lang/Runnable;)V

    .line 2372
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->e()Lcom/oplus/camera/timelapsepro/c;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 2373
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->e()Lcom/oplus/camera/timelapsepro/c;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/oplus/camera/timelapsepro/c;->a(Z)Z

    .line 2376
    :cond_2
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->n()V

    .line 2377
    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->ak:Lcom/oplus/camera/ui/inverse/InverseTextView;

    const-string p1, "0"

    .line 2379
    invoke-direct {p0, p1, v1}, Lcom/oplus/camera/timelapsepro/h;->d(Ljava/lang/String;Z)V

    .line 2381
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->m:Lcom/oplus/camera/timelapsepro/c;

    if-eqz p1, :cond_3

    .line 2382
    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->m:Lcom/oplus/camera/timelapsepro/c;

    :cond_3
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .line 2752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroy, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/timelapsepro/h;->z:I

    invoke-direct {p0, v1}, Lcom/oplus/camera/timelapsepro/h;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TimeLapseProMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2754
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->s()V

    .line 2755
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->n()V

    .line 2757
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->J:Lcom/oplus/camera/timelapsepro/g;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2758
    invoke-virtual {v0, v2}, Lcom/oplus/camera/timelapsepro/g;->setTimeLapseProMenuListener(Lcom/oplus/camera/timelapsepro/g$e;)V

    .line 2759
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->J:Lcom/oplus/camera/timelapsepro/g;

    invoke-virtual {v0, v2}, Lcom/oplus/camera/timelapsepro/g;->setChangeScreenModeListener(Lcom/oplus/camera/timelapsepro/g$c;)V

    .line 2760
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->J:Lcom/oplus/camera/timelapsepro/g;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/timelapsepro/g;->b(Lcom/oplus/camera/timelapsepro/g$d;)V

    .line 2761
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->J:Lcom/oplus/camera/timelapsepro/g;

    invoke-virtual {v0, v2}, Lcom/oplus/camera/timelapsepro/g;->setReportCallback(Lcom/oplus/camera/timelapsepro/g$f;)V

    .line 2762
    iput-object v2, p0, Lcom/oplus/camera/timelapsepro/h;->J:Lcom/oplus/camera/timelapsepro/g;

    .line 2765
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->m:Lcom/oplus/camera/timelapsepro/c;

    if-eqz v0, :cond_1

    .line 2766
    iput-object v2, p0, Lcom/oplus/camera/timelapsepro/h;->m:Lcom/oplus/camera/timelapsepro/c;

    .line 2769
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->aC:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2770
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->aC:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2771
    iget-object v3, p0, Lcom/oplus/camera/timelapsepro/h;->aC:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;

    if-eqz v2, :cond_2

    .line 2774
    invoke-virtual {v2}, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->destroy()V

    goto :goto_0

    .line 2779
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->aC:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2782
    :cond_4
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/h;->isVideoRecordStopped()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "onDestroy, block"

    .line 2783
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2785
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->h:Landroid/os/ConditionVariable;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, v0, v1}, Landroid/os/ConditionVariable;->block(J)Z

    :cond_5
    return-void
.end method

.method public onImageReceived(Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    const/16 v1, 0x11

    .line 622
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getFormat()I

    move-result v2

    if-eq v1, v2, :cond_0

    goto/16 :goto_1

    .line 627
    :cond_0
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getImage()[B

    move-result-object v1

    if-nez v1, :cond_1

    const-string p0, "TimeLapseProMode"

    const-string p1, "onImageReceived, image.getImage() is null"

    .line 628
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 633
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_2

    .line 634
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/camera/timelapsepro/h;->ar:Z

    .line 637
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/h;->isSloganOpen()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 638
    iget-boolean v0, p0, Lcom/oplus/camera/timelapsepro/h;->aF:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/oplus/camera/timelapsepro/h;->aF:Z

    .line 641
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImageReceived, mReceivedYuvImageNum: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/camera/timelapsepro/h;->y:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", image : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mbRearMirrorEnable: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oplus/camera/timelapsepro/h;->ar:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mbSloganFlag: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oplus/camera/timelapsepro/h;->aF:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TimeLapseProMode"

    .line 641
    invoke-static {v2, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    iput-boolean v1, p0, Lcom/oplus/camera/timelapsepro/h;->Y:Z

    const-wide/16 v2, 0x0

    .line 646
    iput-wide v2, p0, Lcom/oplus/camera/timelapsepro/h;->N:J

    .line 648
    iget-boolean v0, p0, Lcom/oplus/camera/timelapsepro/h;->o:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/oplus/camera/timelapsepro/h;->aF:Z

    if-nez v0, :cond_4

    .line 649
    iget v0, p0, Lcom/oplus/camera/timelapsepro/h;->x:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/oplus/camera/timelapsepro/h;->x:I

    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImageReceived, mReceivedRawNum: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/camera/timelapsepro/h;->x:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", num: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->t()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TimeLapseProMode"

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    :cond_4
    iget v0, p0, Lcom/oplus/camera/timelapsepro/h;->z:I

    if-nez v0, :cond_6

    .line 655
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->u()Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/oplus/camera/timelapsepro/h;->o:Z

    if-nez v0, :cond_6

    .line 656
    :cond_5
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->v:Ljava/lang/Object;

    monitor-enter v0

    .line 657
    :try_start_0
    iget v2, p0, Lcom/oplus/camera/timelapsepro/h;->y:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/oplus/camera/timelapsepro/h;->y:I

    .line 658
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImageReceived, size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->e()Lcom/oplus/camera/timelapsepro/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/camera/timelapsepro/c;->b()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", length: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getImage()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", width: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", orientation: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getOrientation()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", stride: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getStride()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", scanLine: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getScanline()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mReceivedYuvNumber: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/camera/timelapsepro/h;->y:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mbShouldEncode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oplus/camera/timelapsepro/h;->aB:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TimeLapseProMode"

    .line 660
    invoke-static {v2, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    iget-boolean v0, p0, Lcom/oplus/camera/timelapsepro/h;->aB:Z

    if-eqz v0, :cond_6

    .line 666
    invoke-direct {p0, p1}, Lcom/oplus/camera/timelapsepro/h;->a(Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 658
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 670
    :cond_6
    :goto_0
    iget-boolean p1, p0, Lcom/oplus/camera/timelapsepro/h;->o:Z

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lcom/oplus/camera/timelapsepro/h;->aF:Z

    if-nez p1, :cond_7

    .line 671
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->C()V

    :cond_7
    return v1

    .line 623
    :cond_8
    :goto_1
    iput-boolean v0, p0, Lcom/oplus/camera/timelapsepro/h;->Y:Z

    return v0
.end method

.method protected onInitCameraMode()V
    .locals 4

    const-string v0, "TimeLapseProMode"

    const-string v1, "onInitCameraMode, Start"

    .line 1205
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 1208
    invoke-virtual {p0, v0}, Lcom/oplus/camera/timelapsepro/h;->b(I)V

    .line 1210
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIInterface;->aY()Lcom/oplus/camera/timelapsepro/g;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->J:Lcom/oplus/camera/timelapsepro/g;

    .line 1212
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    const-string v3, "pref_time_lapse_pro_template_key"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/timelapsepro/h;->I:I

    .line 1213
    iget v1, p0, Lcom/oplus/camera/timelapsepro/h;->I:I

    const/4 v3, 0x1

    if-ne v1, v0, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/oplus/camera/timelapsepro/h;->au:Z

    .line 1214
    iget v1, p0, Lcom/oplus/camera/timelapsepro/h;->I:I

    if-ne v1, v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/oplus/camera/timelapsepro/h;->o:Z

    .line 1215
    iput-boolean v2, p0, Lcom/oplus/camera/timelapsepro/h;->av:Z

    .line 1217
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->J:Lcom/oplus/camera/timelapsepro/g;

    if-eqz v0, :cond_2

    .line 1218
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->aD:Lcom/oplus/camera/timelapsepro/g$e;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/timelapsepro/g;->setTimeLapseProMenuListener(Lcom/oplus/camera/timelapsepro/g$e;)V

    .line 1219
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->J:Lcom/oplus/camera/timelapsepro/g;

    new-instance v1, Lcom/oplus/camera/timelapsepro/-$$Lambda$h$wpSx9MreC6R12QjfsCLm3q7-O5Q;

    invoke-direct {v1, p0}, Lcom/oplus/camera/timelapsepro/-$$Lambda$h$wpSx9MreC6R12QjfsCLm3q7-O5Q;-><init>(Lcom/oplus/camera/timelapsepro/h;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/timelapsepro/g;->setChangeScreenModeListener(Lcom/oplus/camera/timelapsepro/g$c;)V

    .line 1220
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->J:Lcom/oplus/camera/timelapsepro/g;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/timelapsepro/g;->a(Lcom/oplus/camera/timelapsepro/g$d;)V

    .line 1221
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->J:Lcom/oplus/camera/timelapsepro/g;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/timelapsepro/g;->setReportCallback(Lcom/oplus/camera/timelapsepro/g$f;)V

    .line 1224
    :cond_2
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->y()V

    .line 1226
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->aE:Landroid/view/View$OnClickListener;

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Landroid/view/View$OnClickListener;)V

    .line 1228
    iget v0, p0, Lcom/oplus/camera/timelapsepro/h;->I:I

    if-ne v0, v3, :cond_3

    .line 1229
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1006c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/camera/timelapsepro/h;->d(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 1231
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1006c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/camera/timelapsepro/h;->d(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string v0, "15"

    .line 1233
    invoke-direct {p0, v0}, Lcom/oplus/camera/timelapsepro/h;->d(Ljava/lang/String;)V

    .line 1236
    :goto_2
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    const v1, 0x7f1000fd

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/oplus/camera/ui/CameraUIInterface;->c(Ljava/lang/String;)V

    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "TimeLapseProMode"

    const-string v1, "onLongPress"

    .line 494
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    invoke-direct {p0, p1}, Lcom/oplus/camera/timelapsepro/h;->a(Landroid/view/MotionEvent;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onMenuBackButtonClick()V
    .locals 2

    .line 428
    iget v0, p0, Lcom/oplus/camera/timelapsepro/h;->I:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 429
    iget-boolean v0, p0, Lcom/oplus/camera/timelapsepro/h;->M:Z

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->aH()V

    const/4 v0, 0x0

    .line 431
    iput-boolean v0, p0, Lcom/oplus/camera/timelapsepro/h;->M:Z

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v1}, Lcom/oplus/camera/capmode/a;->a(ZZ)V

    .line 435
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0, v1}, Lcom/oplus/camera/capmode/a;->d(Z)V

    :cond_1
    return-void
.end method

.method public onMoreModeHidden(I)V
    .locals 1

    .line 482
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onMoreModeHidden(I)V

    .line 484
    iget-boolean p1, p0, Lcom/oplus/camera/timelapsepro/h;->mbFrontCamera:Z

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 485
    invoke-direct {p0, v0, p1, p1}, Lcom/oplus/camera/timelapsepro/h;->a(ZZZ)V

    .line 486
    invoke-direct {p0, v0, p1, p1}, Lcom/oplus/camera/timelapsepro/h;->b(ZZZ)V

    .line 489
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->N(Z)V

    return-void
.end method

.method public onMoreModeShown()V
    .locals 1

    .line 474
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->onMoreModeShown()V

    const/4 v0, 0x0

    .line 475
    invoke-direct {p0, v0, v0, v0}, Lcom/oplus/camera/timelapsepro/h;->a(ZZZ)V

    .line 476
    invoke-direct {p0, v0, v0, v0}, Lcom/oplus/camera/timelapsepro/h;->b(ZZZ)V

    .line 477
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->O(Z)V

    return-void
.end method

.method protected onPause()V
    .locals 9

    const-string v0, "TimeLapseProMode"

    const-string v1, "onPause"

    .line 2719
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2721
    iget v0, p0, Lcom/oplus/camera/timelapsepro/h;->I:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/oplus/camera/timelapsepro/h;->L:Z

    .line 2723
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->J:Lcom/oplus/camera/timelapsepro/g;

    if-eqz v0, :cond_2

    .line 2724
    invoke-virtual {v0}, Lcom/oplus/camera/timelapsepro/g;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v4, 0x0

    .line 2725
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->J:Lcom/oplus/camera/timelapsepro/g;

    invoke-virtual {v0}, Lcom/oplus/camera/timelapsepro/g;->c()Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/oplus/camera/timelapsepro/h;->a(ZZZZZ)V

    .line 2726
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->Q(Z)V

    .line 2729
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->J:Lcom/oplus/camera/timelapsepro/g;

    invoke-virtual {v0}, Lcom/oplus/camera/timelapsepro/g;->k()V

    .line 2732
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/h;->isVideoRecording()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2733
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v2, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->u(ZZ)V

    .line 2736
    :cond_3
    invoke-virtual {p0, v2}, Lcom/oplus/camera/timelapsepro/h;->forceStopVideoRecording(Z)V

    .line 2738
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->d(ZZ)V

    .line 2740
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->w()V

    .line 2741
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->j()V

    .line 2742
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->k()V

    return-void
.end method

.method public onPreviewCaptureResult(Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;)V
    .locals 8

    .line 1955
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onPreviewCaptureResult(Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;)V

    .line 1957
    iget-boolean v0, p0, Lcom/oplus/camera/timelapsepro/h;->mbCapModeInit:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_a

    .line 1961
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_4

    .line 1967
    :cond_1
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object p1

    .line 1971
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1972
    sget-object v0, Lcom/oplus/camera/e/b;->T:Landroid/hardware/camera2/CaptureResult$Key;

    .line 1973
    sget-object v1, Lcom/oplus/camera/e/b;->U:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_0

    .line 1975
    :cond_2
    sget-object v0, Lcom/oplus/camera/e/b;->ah:Landroid/hardware/camera2/CaptureResult$Key;

    .line 1976
    sget-object v1, Lcom/oplus/camera/e/b;->W:Landroid/hardware/camera2/CaptureResult$Key;

    .line 1979
    :goto_0
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1980
    sget-object v3, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v3}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 1983
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v4}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    const/4 v5, 0x0

    if-eqz v0, :cond_3

    .line 1987
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    aget v0, v0, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1988
    :try_start_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/oplus/camera/timelapsepro/h;->aA:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v6

    goto :goto_1

    :catch_1
    move-exception v6

    move v0, v5

    .line 1990
    :goto_1
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_3
    move v0, v5

    :goto_2
    if-eqz v1, :cond_4

    .line 1996
    :try_start_2
    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    aget p1, p1, v5

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->ax:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 1998
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_3
    const/4 p1, -0x1

    if-eqz v2, :cond_5

    .line 2003
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/timelapsepro/h;->ad:I

    .line 2004
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->ay:Ljava/lang/String;

    .line 2005
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->R:Ljava/util/List;

    const/4 v5, 0x1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/timelapsepro/a/d;

    .line 2006
    invoke-virtual {v1}, Lcom/oplus/camera/timelapsepro/a/d;->j()Ljava/util/List;

    move-result-object v5

    .line 2008
    invoke-virtual {v1}, Lcom/oplus/camera/timelapsepro/a/d;->g()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2009
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v1}, Lcom/oplus/camera/timelapsepro/a/d;->j()Ljava/util/List;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/oplus/camera/timelapsepro/h;->a(ILjava/util/List;)I

    move-result v6

    if-le v6, p1, :cond_5

    .line 2012
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/oplus/camera/timelapsepro/h;->q:I

    if-eqz v5, :cond_5

    .line 2014
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v6, :cond_5

    .line 2015
    invoke-virtual {v1, v6}, Lcom/oplus/camera/timelapsepro/a/d;->a(I)V

    :cond_5
    if-eqz v3, :cond_6

    .line 2022
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/oplus/camera/timelapsepro/h;->af:J

    .line 2023
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->az:Ljava/lang/String;

    .line 2024
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->R:Ljava/util/List;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/timelapsepro/a/h;

    if-eqz v1, :cond_6

    .line 2026
    invoke-virtual {v1}, Lcom/oplus/camera/timelapsepro/a/h;->g()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2027
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v1}, Lcom/oplus/camera/timelapsepro/a/h;->j()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v5, v6, v2}, Lcom/oplus/camera/timelapsepro/h;->a(JLjava/util/List;)I

    move-result v2

    if-le v2, p1, :cond_6

    .line 2031
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/oplus/camera/timelapsepro/h;->r:J

    .line 2033
    invoke-virtual {v1}, Lcom/oplus/camera/timelapsepro/a/h;->k()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 2035
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v2, :cond_6

    .line 2036
    invoke-virtual {v1, v2}, Lcom/oplus/camera/timelapsepro/a/h;->a(I)V

    .line 2042
    :cond_6
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->R:Ljava/util/List;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/timelapsepro/a/l;

    if-eqz v1, :cond_7

    .line 2044
    invoke-virtual {v1}, Lcom/oplus/camera/timelapsepro/a/l;->g()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2045
    invoke-virtual {v1}, Lcom/oplus/camera/timelapsepro/a/l;->j()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/oplus/camera/timelapsepro/h;->a(ILjava/util/List;)I

    move-result v0

    if-le v0, p1, :cond_7

    .line 2049
    invoke-virtual {v1}, Lcom/oplus/camera/timelapsepro/a/l;->k()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v0, :cond_7

    .line 2050
    invoke-virtual {v1, v0}, Lcom/oplus/camera/timelapsepro/a/l;->a(I)V

    :cond_7
    if-eqz v4, :cond_9

    .line 2056
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->R:Ljava/util/List;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/timelapsepro/a/c;

    .line 2058
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/h;->isVideoRecording()Z

    move-result v1

    if-nez v1, :cond_8

    .line 2059
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, p0, Lcom/oplus/camera/timelapsepro/h;->ai:F

    .line 2062
    :cond_8
    invoke-virtual {v0}, Lcom/oplus/camera/timelapsepro/a/c;->g()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2063
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0}, Lcom/oplus/camera/timelapsepro/a/c;->j()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/oplus/camera/timelapsepro/h;->a(FLjava/util/List;)I

    move-result p0

    if-le p0, p1, :cond_9

    .line 2067
    invoke-virtual {v0}, Lcom/oplus/camera/timelapsepro/a/c;->k()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, p0, :cond_9

    .line 2068
    invoke-virtual {v0, p0}, Lcom/oplus/camera/timelapsepro/a/c;->a(I)V

    :cond_9
    return-void

    .line 1962
    :cond_a
    :goto_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPreviewCaptureResult, invalid totalResult: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TimeLapseProMode"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onResume(Z)V
    .locals 1

    const-string p1, "TimeLapseProMode"

    const-string v0, "onResume"

    .line 2701
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2703
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->h:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->close()V

    .line 2705
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->aE:Landroid/view/View$OnClickListener;

    invoke-interface {p1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Landroid/view/View$OnClickListener;)V

    .line 2707
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->H()V

    .line 2709
    iget-boolean p1, p0, Lcom/oplus/camera/timelapsepro/h;->L:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2710
    iput-boolean p1, p0, Lcom/oplus/camera/timelapsepro/h;->L:Z

    .line 2711
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->W()V

    .line 2714
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->v()V

    return-void
.end method

.method public onSessionConfigured()V
    .locals 5

    .line 1636
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->onSessionConfigured()V

    .line 1638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSessionConfigured, mbHaveStopRecord: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/timelapsepro/h;->S:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TimeLapseProMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1640
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->v()V

    .line 1642
    iget-boolean v0, p0, Lcom/oplus/camera/timelapsepro/h;->mbFrontCamera:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/timelapsepro/h;->T:Z

    if-eqz v0, :cond_0

    .line 1643
    iput-boolean v1, p0, Lcom/oplus/camera/timelapsepro/h;->T:Z

    .line 1644
    new-instance v0, Lcom/oplus/camera/timelapsepro/-$$Lambda$h$yYYb166yUrkeI7C0hNnTgPxTm-c;

    invoke-direct {v0, p0}, Lcom/oplus/camera/timelapsepro/-$$Lambda$h$yYYb166yUrkeI7C0hNnTgPxTm-c;-><init>(Lcom/oplus/camera/timelapsepro/h;)V

    invoke-direct {p0, v0}, Lcom/oplus/camera/timelapsepro/h;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1648
    :cond_0
    iget-boolean v0, p0, Lcom/oplus/camera/timelapsepro/h;->S:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->s:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/16 v2, 0x6a

    const-wide/16 v3, 0x1f4

    .line 1649
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1652
    :cond_1
    :goto_0
    iget v0, p0, Lcom/oplus/camera/timelapsepro/h;->I:I

    if-eqz v0, :cond_2

    .line 1653
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->R:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->s:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 1654
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->R:Ljava/util/List;

    const/4 v2, 0x4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {v0}, Lcom/oplus/camera/timelapsepro/a/e;->k()Ljava/util/List;

    move-result-object v0

    const-string v3, "0.96"

    invoke-interface {v0, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1655
    iget-object v3, p0, Lcom/oplus/camera/timelapsepro/h;->R:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {v2}, Lcom/oplus/camera/timelapsepro/a/e;->j()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1656
    invoke-virtual {p0, v0}, Lcom/oplus/camera/timelapsepro/h;->b(Ljava/lang/String;)V

    .line 1660
    :cond_2
    iput-boolean v1, p0, Lcom/oplus/camera/timelapsepro/h;->Y:Z

    return-void
.end method

.method public onShareMenuExpand()V
    .locals 0

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 6

    .line 3143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSharedPreferenceChanged, key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TimeLapseProMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pref_time_lapse_pro_whitebalance_key"

    .line 3145
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3146
    invoke-direct {p0, v1}, Lcom/oplus/camera/timelapsepro/h;->h(Z)V

    return-void

    :cond_0
    const-string v0, "pref_time_lapse_pro_iso_key"

    .line 3149
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "off"

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 3150
    sget-boolean p1, Lcom/oplus/camera/Camera;->l:Z

    if-nez p1, :cond_1

    .line 3151
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/h;->getFlashMode()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/oplus/camera/e/d;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 3153
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {p1, v2}, Lcom/oplus/camera/e/d;->b(Ljava/lang/String;)V

    .line 3156
    :goto_0
    invoke-direct {p0, v3}, Lcom/oplus/camera/timelapsepro/h;->c(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string v0, "pref_time_lapse_pro_exposure_compensation_key"

    .line 3159
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3160
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/h;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3161
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {p0, v3}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    return-void

    :cond_3
    const-string v0, "pref_time_lapse_pro_exposure_time_key"

    .line 3164
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3165
    sget-boolean p1, Lcom/oplus/camera/Camera;->l:Z

    if-nez p1, :cond_4

    .line 3166
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/h;->getFlashMode()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/oplus/camera/e/d;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 3168
    :cond_4
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {p1, v2}, Lcom/oplus/camera/e/d;->b(Ljava/lang/String;)V

    .line 3171
    :goto_1
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->R()V

    .line 3172
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->F()J

    move-result-wide p1

    const-wide/32 v0, 0x1dcd6500

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_6

    const-wide/32 v2, 0xf4240

    .line 3175
    div-long/2addr p1, v2

    .line 3176
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0300ac

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 3178
    :goto_2
    array-length v2, v0

    if-ge v1, v2, :cond_7

    .line 3179
    aget-object v2, v0, v1

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->e()Lcom/oplus/camera/timelapsepro/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/camera/timelapsepro/c;->c()I

    move-result v4

    int-to-long v4, v4

    div-long/2addr v2, v4

    cmp-long v2, p1, v2

    if-ltz v2, :cond_5

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3183
    :cond_5
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->J:Lcom/oplus/camera/timelapsepro/g;

    if-eqz p0, :cond_7

    .line 3184
    invoke-virtual {p0, v1}, Lcom/oplus/camera/timelapsepro/g;->a(I)V

    goto :goto_3

    .line 3191
    :cond_6
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->J:Lcom/oplus/camera/timelapsepro/g;

    if-eqz p0, :cond_7

    .line 3192
    invoke-virtual {p0, v1}, Lcom/oplus/camera/timelapsepro/g;->a(I)V

    :cond_7
    :goto_3
    return-void

    :cond_8
    const-string v0, "pref_time_lapse_pro_focus_mode_key"

    .line 3197
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3198
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->R:Ljava/util/List;

    const/4 v2, 0x4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {v0}, Lcom/oplus/camera/timelapsepro/a/e;->g()Z

    move-result v0

    if-nez v0, :cond_9

    .line 3199
    invoke-virtual {p0, v3}, Lcom/oplus/camera/timelapsepro/h;->b(Ljava/lang/String;)V

    goto :goto_4

    .line 3201
    :cond_9
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v0}, Lcom/oplus/camera/e/d;->p()I

    move-result v0

    if-eq v2, v0, :cond_a

    .line 3202
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mOneCamera:Lcom/oplus/camera/e/d;

    .line 3203
    invoke-static {}, Lcom/oplus/camera/a;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v4

    invoke-static {}, Lcom/oplus/camera/a;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v5

    .line 3202
    invoke-interface {v0, v2, v4, v5, v1}, Lcom/oplus/camera/e/d;->a(I[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;Z)V

    .line 3204
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v0, v3}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    .line 3207
    :cond_a
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v0}, Lcom/oplus/camera/e/d;->p()I

    move-result v0

    if-eq v2, v0, :cond_b

    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mOneCamera:Lcom/oplus/camera/e/d;

    .line 3208
    invoke-interface {v0}, Lcom/oplus/camera/e/d;->p()I

    move-result v0

    if-ne v1, v0, :cond_e

    .line 3209
    :cond_b
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->N()V

    goto :goto_4

    :cond_c
    const-string v0, "pref_camera_flashmode_key"

    .line 3212
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 3213
    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    const v3, 0x7f1001bb

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/oplus/camera/timelapsepro/h;->mActivity:Landroid/app/Activity;

    .line 3215
    invoke-virtual {v4, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3214
    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 3216
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->V()V

    .line 3219
    :cond_d
    invoke-direct {p0, v1}, Lcom/oplus/camera/timelapsepro/h;->j(Z)V

    .line 3222
    :cond_e
    :goto_4
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/BaseMode;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method protected onShutterCallback(ZZ)V
    .locals 0

    .line 2638
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/BaseMode;->onShutterCallback(ZZ)V

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "TimeLapseProMode"

    const-string v1, "onSingleTapUp"

    .line 354
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->J:Lcom/oplus/camera/timelapsepro/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/camera/timelapsepro/g;->n()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->J:Lcom/oplus/camera/timelapsepro/g;

    invoke-virtual {v0}, Lcom/oplus/camera/timelapsepro/g;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 357
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->J:Lcom/oplus/camera/timelapsepro/g;

    invoke-virtual {p1}, Lcom/oplus/camera/timelapsepro/g;->c()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/oplus/camera/timelapsepro/h;->c(Z)V

    const/4 p0, 0x1

    return p0

    .line 362
    :cond_0
    invoke-direct {p0, p1}, Lcom/oplus/camera/timelapsepro/h;->a(Landroid/view/MotionEvent;)V

    const/4 p0, 0x0

    return p0
.end method

.method protected onStop()V
    .locals 0

    return-void
.end method

.method protected onStopTakePicture()Z
    .locals 3

    .line 2340
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->g()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v1, v0, :cond_0

    .line 2341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStopTakePicture failed, current camera state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->g()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TimeLapseProMode"

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 2346
    :cond_0
    iput-boolean v2, p0, Lcom/oplus/camera/timelapsepro/h;->mbInCapturing:Z

    .line 2347
    invoke-virtual {p0, v1}, Lcom/oplus/camera/timelapsepro/h;->setCapturePreviewDataState(I)V

    .line 2348
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oplus/camera/capmode/a;->f(Z)V

    .line 2349
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZ)V

    return v1
.end method

.method protected onSwitchCameraButtonClick()V
    .locals 3

    .line 3227
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->onSwitchCameraButtonClick()V

    const/4 v0, 0x1

    .line 3228
    iput-boolean v0, p0, Lcom/oplus/camera/timelapsepro/h;->T:Z

    .line 3230
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->J:Lcom/oplus/camera/timelapsepro/g;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/oplus/camera/timelapsepro/g;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 3231
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->J:Lcom/oplus/camera/timelapsepro/g;

    invoke-virtual {v1}, Lcom/oplus/camera/timelapsepro/g;->c()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3232
    invoke-direct {p0, v2, v0}, Lcom/oplus/camera/timelapsepro/h;->a(ZZ)V

    goto :goto_0

    .line 3234
    :cond_0
    invoke-direct {p0, v2, v0}, Lcom/oplus/camera/timelapsepro/h;->b(ZZ)V

    .line 3237
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->Q(Z)V

    :cond_1
    return-void
.end method

.method public onVideoShutterButtonClick()V
    .locals 8

    .line 3794
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->onVideoShutterButtonClick()V

    .line 3796
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const-string v1, "TimeLapseProMode"

    if-nez v0, :cond_0

    const-string p0, "onVideoShutterButtonClick mCameraInterface is null."

    .line 3797
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3802
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoShutterButtonClick, mRecorderStatus: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/camera/timelapsepro/h;->z:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mCameraInterface.isAnimationRunning: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 3803
    invoke-interface {v2}, Lcom/oplus/camera/capmode/a;->R()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3802
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 3805
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->F()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "onVideoShutterButtonClick, being capture mode change!"

    .line 3806
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3811
    :cond_1
    sget v0, Lcom/oplus/camera/Storage;->w:I

    if-eqz v0, :cond_2

    .line 3812
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIInterface;->t()V

    return-void

    .line 3816
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/h;->isVideoRecording()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->P()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "onVideoShutterButtonClick, memory or storage is not enough"

    .line 3817
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3819
    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v3, 0x7f100474

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    const-string v0, "disable_code"

    const-string v1, "memory_capture"

    .line 3821
    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/timelapsepro/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3825
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoShutterButtonClick, CameraTest Click Video Button. mRecorderStatus: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/camera/timelapsepro/h;->z:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 3827
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/h;->isVideoRecordStarted()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3828
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->s:Landroid/os/Handler;

    if-eqz v0, :cond_4

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3829
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h;->s:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3832
    :cond_4
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->J()V

    goto :goto_0

    .line 3833
    :cond_5
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/h;->isVideoRecordStopped()Z

    :goto_0
    return-void
.end method

.method public onZoomMenuCollapsing()V
    .locals 1

    .line 2414
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->onZoomMenuCollapsing()V

    .line 2416
    iget-boolean v0, p0, Lcom/oplus/camera/timelapsepro/h;->mbFrontCamera:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2417
    invoke-direct {p0, v0, v0, v0}, Lcom/oplus/camera/timelapsepro/h;->a(ZZZ)V

    .line 2418
    invoke-direct {p0, v0, v0, v0}, Lcom/oplus/camera/timelapsepro/h;->b(ZZZ)V

    :cond_0
    return-void
.end method

.method public onZoomMenuExpand()V
    .locals 2

    .line 2404
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->onZoomMenuExpand()V

    .line 2406
    iget-boolean v0, p0, Lcom/oplus/camera/timelapsepro/h;->mbFrontCamera:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2407
    invoke-direct {p0, v0, v1, v1}, Lcom/oplus/camera/timelapsepro/h;->a(ZZZ)V

    .line 2408
    invoke-direct {p0, v0, v1, v1}, Lcom/oplus/camera/timelapsepro/h;->b(ZZZ)V

    :cond_0
    return-void
.end method

.method public restoreDefaultMode(Z)V
    .locals 0

    .line 3764
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->restoreDefaultMode(Z)V

    return-void
.end method

.method public setCameraId(I)V
    .locals 0

    .line 2671
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->setCameraId(I)V

    .line 2672
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h;->e()Lcom/oplus/camera/timelapsepro/c;

    move-result-object p1

    iget-boolean p0, p0, Lcom/oplus/camera/timelapsepro/h;->mbFrontCamera:Z

    invoke-virtual {p1, p0}, Lcom/oplus/camera/timelapsepro/c;->c(Z)V

    return-void
.end method

.method public setFlashTemporaryDisabled(Z)V
    .locals 4

    const-string v0, "pref_switch_camera_key"

    .line 3299
    invoke-virtual {p0, v0}, Lcom/oplus/camera/timelapsepro/h;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "pref_camera_flashmode_key"

    .line 3300
    invoke-virtual {p0, v1}, Lcom/oplus/camera/timelapsepro/h;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/h;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_3

    .line 3302
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/h;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "camera_main"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3303
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/h;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.oplus.feature.flash.full.zoom.support"

    .line 3305
    invoke-static {v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    const-string v1, "camera_tele"

    .line 3306
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "on"

    .line 3307
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "auto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    iput-boolean v3, p0, Lcom/oplus/camera/timelapsepro/h;->mbFlashTemporaryDisabled:Z

    goto :goto_1

    .line 3309
    :cond_2
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v3

    iput-boolean p1, p0, Lcom/oplus/camera/timelapsepro/h;->mbFlashTemporaryDisabled:Z

    goto :goto_1

    .line 3312
    :cond_3
    iput-boolean p1, p0, Lcom/oplus/camera/timelapsepro/h;->mbFlashTemporaryDisabled:Z

    :goto_1
    return-void
.end method

.method public setLowBatteryState(Z)V
    .locals 0

    .line 3921
    iput-boolean p1, p0, Lcom/oplus/camera/timelapsepro/h;->g:Z

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .line 2692
    iget v0, p0, Lcom/oplus/camera/timelapsepro/h;->mOrientation:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2696
    :cond_0
    iput p1, p0, Lcom/oplus/camera/timelapsepro/h;->mOrientation:I

    return-void
.end method

.method protected updateCaptureParam(Lcom/oplus/camera/e/c;)V
    .locals 0

    .line 2472
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->updateCaptureParam(Lcom/oplus/camera/e/c;)V

    .line 2473
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/oplus/camera/e/d;->e(Z)V

    return-void
.end method
