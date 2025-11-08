.class public Lcom/oplus/camera/ui/control/e$d;
.super Ljava/lang/Object;
.source "Thumbnail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/control/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public a:J

.field public b:I

.field public c:J

.field public d:Landroid/net/Uri;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:I

.field public j:I

.field public k:I

.field public l:J

.field public m:Landroid/graphics/Bitmap;

.field public n:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1116
    iput v0, p0, Lcom/oplus/camera/ui/control/e$d;->i:I

    .line 1117
    iput v0, p0, Lcom/oplus/camera/ui/control/e$d;->j:I

    const/4 v1, -0x1

    .line 1118
    iput v1, p0, Lcom/oplus/camera/ui/control/e$d;->k:I

    const/4 v1, 0x0

    .line 1120
    iput-object v1, p0, Lcom/oplus/camera/ui/control/e$d;->m:Landroid/graphics/Bitmap;

    .line 1121
    iput-boolean v0, p0, Lcom/oplus/camera/ui/control/e$d;->n:Z

    return-void
.end method

.method public constructor <init>(JIJLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2

    .line 1154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1116
    iput v0, p0, Lcom/oplus/camera/ui/control/e$d;->i:I

    .line 1117
    iput v0, p0, Lcom/oplus/camera/ui/control/e$d;->j:I

    const/4 v1, -0x1

    .line 1118
    iput v1, p0, Lcom/oplus/camera/ui/control/e$d;->k:I

    const/4 v1, 0x0

    .line 1120
    iput-object v1, p0, Lcom/oplus/camera/ui/control/e$d;->m:Landroid/graphics/Bitmap;

    .line 1121
    iput-boolean v0, p0, Lcom/oplus/camera/ui/control/e$d;->n:Z

    .line 1155
    iput-wide p1, p0, Lcom/oplus/camera/ui/control/e$d;->a:J

    .line 1156
    iput p3, p0, Lcom/oplus/camera/ui/control/e$d;->b:I

    .line 1157
    iput-wide p4, p0, Lcom/oplus/camera/ui/control/e$d;->c:J

    .line 1158
    iput-object p6, p0, Lcom/oplus/camera/ui/control/e$d;->d:Landroid/net/Uri;

    .line 1159
    iput-object p7, p0, Lcom/oplus/camera/ui/control/e$d;->e:Ljava/lang/String;

    .line 1160
    iput-object p8, p0, Lcom/oplus/camera/ui/control/e$d;->f:Ljava/lang/String;

    .line 1161
    iput-object p9, p0, Lcom/oplus/camera/ui/control/e$d;->g:Ljava/lang/String;

    .line 1162
    iput p11, p0, Lcom/oplus/camera/ui/control/e$d;->i:I

    .line 1163
    iput p12, p0, Lcom/oplus/camera/ui/control/e$d;->j:I

    .line 1164
    iput-object p10, p0, Lcom/oplus/camera/ui/control/e$d;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JIJLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJZ)V
    .locals 3

    move-object v0, p0

    .line 1168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 1116
    iput v1, v0, Lcom/oplus/camera/ui/control/e$d;->i:I

    .line 1117
    iput v1, v0, Lcom/oplus/camera/ui/control/e$d;->j:I

    const/4 v2, -0x1

    .line 1118
    iput v2, v0, Lcom/oplus/camera/ui/control/e$d;->k:I

    const/4 v2, 0x0

    .line 1120
    iput-object v2, v0, Lcom/oplus/camera/ui/control/e$d;->m:Landroid/graphics/Bitmap;

    .line 1121
    iput-boolean v1, v0, Lcom/oplus/camera/ui/control/e$d;->n:Z

    move-wide v1, p1

    .line 1169
    iput-wide v1, v0, Lcom/oplus/camera/ui/control/e$d;->a:J

    move v1, p3

    .line 1170
    iput v1, v0, Lcom/oplus/camera/ui/control/e$d;->b:I

    move-wide v1, p4

    .line 1171
    iput-wide v1, v0, Lcom/oplus/camera/ui/control/e$d;->c:J

    move-object v1, p6

    .line 1172
    iput-object v1, v0, Lcom/oplus/camera/ui/control/e$d;->d:Landroid/net/Uri;

    move-object v1, p7

    .line 1173
    iput-object v1, v0, Lcom/oplus/camera/ui/control/e$d;->e:Ljava/lang/String;

    move-object v1, p8

    .line 1174
    iput-object v1, v0, Lcom/oplus/camera/ui/control/e$d;->f:Ljava/lang/String;

    move-object v1, p9

    .line 1175
    iput-object v1, v0, Lcom/oplus/camera/ui/control/e$d;->g:Ljava/lang/String;

    move v1, p11

    .line 1176
    iput v1, v0, Lcom/oplus/camera/ui/control/e$d;->i:I

    move v1, p12

    .line 1177
    iput v1, v0, Lcom/oplus/camera/ui/control/e$d;->j:I

    move-object v1, p10

    .line 1178
    iput-object v1, v0, Lcom/oplus/camera/ui/control/e$d;->h:Ljava/lang/String;

    move-wide/from16 v1, p13

    .line 1179
    iput-wide v1, v0, Lcom/oplus/camera/ui/control/e$d;->l:J

    move/from16 v1, p15

    .line 1180
    iput-boolean v1, v0, Lcom/oplus/camera/ui/control/e$d;->n:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 1185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaInfo{mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oplus/camera/ui/control/e$d;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/ui/control/e$d;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDateTaken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oplus/camera/ui/control/e$d;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/ui/control/e$d;->d:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mData=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/ui/control/e$d;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mTitle=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/ui/control/e$d;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mPath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/ui/control/e$d;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mMimeType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/ui/control/e$d;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/ui/control/e$d;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/ui/control/e$d;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/ui/control/e$d;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mBitmap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/ui/control/e$d;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mbIsPending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oplus/camera/ui/control/e$d;->n:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
