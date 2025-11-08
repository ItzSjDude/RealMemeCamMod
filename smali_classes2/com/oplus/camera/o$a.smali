.class Lcom/oplus/camera/o$a;
.super Landroid/os/AsyncTask;
.source "GestureEngineManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/o;

.field private final b:I

.field private final c:I

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/oplus/camera/o;Landroid/content/Context;II)V
    .locals 1

    .line 213
    iput-object p1, p0, Lcom/oplus/camera/o$a;->a:Lcom/oplus/camera/o;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x1

    .line 211
    iput-boolean v0, p0, Lcom/oplus/camera/o$a;->d:Z

    .line 214
    invoke-static {p1, p2}, Lcom/oplus/camera/o;->a(Lcom/oplus/camera/o;Landroid/content/Context;)Landroid/content/Context;

    .line 215
    iput p3, p0, Lcom/oplus/camera/o$a;->b:I

    .line 216
    iput p4, p0, Lcom/oplus/camera/o$a;->c:I

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/crunchfish/touchless_a3d/gesture/Gesture;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 260
    :try_start_0
    iget-object p0, p0, Lcom/oplus/camera/o$a;->a:Lcom/oplus/camera/o;

    invoke-static {p0}, Lcom/oplus/camera/o;->d(Lcom/oplus/camera/o;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p1

    new-array p1, p1, [B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 262
    :try_start_2
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v2, -0x1

    if-ne v2, v1, :cond_0

    move-object p1, v0

    :cond_0
    if-eqz p0, :cond_1

    .line 271
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    move-object p1, v0

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object p0, v0

    goto :goto_3

    :catch_2
    move-exception v1

    move-object p0, v0

    move-object p1, p0

    :goto_1
    :try_start_3
    const-string v2, "GestureEngineManager"

    .line 268
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readGestureJson Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    :goto_2
    if-eqz p1, :cond_2

    .line 276
    new-instance p0, Lcom/crunchfish/touchless_a3d/gesture/Gesture;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {p0, v0}, Lcom/crunchfish/touchless_a3d/gesture/Gesture;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_2
    return-object v0

    :catchall_1
    move-exception p1

    :goto_3
    if-eqz p0, :cond_3

    .line 271
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 273
    :cond_3
    throw p1
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7

    const-string p1, "GestureEngineManager"

    .line 222
    iget-object v0, p0, Lcom/oplus/camera/o$a;->a:Lcom/oplus/camera/o;

    invoke-static {v0}, Lcom/oplus/camera/o;->c(Lcom/oplus/camera/o;)V

    .line 223
    iget-object v0, p0, Lcom/oplus/camera/o$a;->a:Lcom/oplus/camera/o;

    invoke-static {v0}, Lcom/oplus/camera/o;->d(Lcom/oplus/camera/o;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 228
    :try_start_0
    iget-object v2, p0, Lcom/oplus/camera/o$a;->a:Lcom/oplus/camera/o;

    new-instance v3, Lcom/crunchfish/touchless_a3d/TouchlessA3D;

    iget v4, p0, Lcom/oplus/camera/o$a;->b:I

    iget v5, p0, Lcom/oplus/camera/o$a;->c:I

    iget-object v6, p0, Lcom/oplus/camera/o$a;->a:Lcom/oplus/camera/o;

    invoke-static {v6}, Lcom/oplus/camera/o;->d(Lcom/oplus/camera/o;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/crunchfish/touchless_a3d/TouchlessA3D;-><init>(IILandroid/content/Context;)V

    invoke-static {v2, v3}, Lcom/oplus/camera/o;->a(Lcom/oplus/camera/o;Lcom/crunchfish/touchless_a3d/TouchlessA3D;)Lcom/crunchfish/touchless_a3d/TouchlessA3D;

    .line 229
    iget-object v2, p0, Lcom/oplus/camera/o$a;->a:Lcom/oplus/camera/o;

    invoke-static {v2}, Lcom/oplus/camera/o;->e(Lcom/oplus/camera/o;)Lcom/crunchfish/touchless_a3d/TouchlessA3D;

    move-result-object v2

    const/16 v3, 0x3ea

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/crunchfish/touchless_a3d/TouchlessA3D;->setParameter(II)V

    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gesture detect engine has be inited mImageWidth:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oplus/camera/o$a;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mImageHeight:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oplus/camera/o$a;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/crunchfish/touchless_a3d/exception/LicenseNotValidException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/crunchfish/touchless_a3d/exception/LicenseServerUnavailableException; {:try_start_0 .. :try_end_0} :catch_1

    .line 242
    :try_start_1
    iget-object v0, p0, Lcom/oplus/camera/o$a;->a:Lcom/oplus/camera/o;

    const-string v2, "hand_wink.json"

    invoke-direct {p0, v2}, Lcom/oplus/camera/o$a;->a(Ljava/lang/String;)Lcom/crunchfish/touchless_a3d/gesture/Gesture;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oplus/camera/o;->a(Lcom/oplus/camera/o;Lcom/crunchfish/touchless_a3d/gesture/Gesture;)Lcom/crunchfish/touchless_a3d/gesture/Gesture;

    .line 243
    iget-object v0, p0, Lcom/oplus/camera/o$a;->a:Lcom/oplus/camera/o;

    invoke-static {v0}, Lcom/oplus/camera/o;->f(Lcom/oplus/camera/o;)Lcom/crunchfish/touchless_a3d/gesture/Gesture;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/oplus/camera/o$a;->a:Lcom/oplus/camera/o;

    invoke-static {v0}, Lcom/oplus/camera/o;->f(Lcom/oplus/camera/o;)Lcom/crunchfish/touchless_a3d/gesture/Gesture;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/camera/o$a;->a:Lcom/oplus/camera/o;

    invoke-static {v2}, Lcom/oplus/camera/o;->g(Lcom/oplus/camera/o;)Lcom/crunchfish/touchless_a3d/gesture/Gesture$Listener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/crunchfish/touchless_a3d/gesture/Gesture;->registerListener(Lcom/crunchfish/touchless_a3d/gesture/Gesture$Listener;)V

    .line 245
    iget-object v0, p0, Lcom/oplus/camera/o$a;->a:Lcom/oplus/camera/o;

    invoke-static {v0}, Lcom/oplus/camera/o;->e(Lcom/oplus/camera/o;)Lcom/crunchfish/touchless_a3d/TouchlessA3D;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/o$a;->a:Lcom/oplus/camera/o;

    invoke-static {p0}, Lcom/oplus/camera/o;->f(Lcom/oplus/camera/o;)Lcom/crunchfish/touchless_a3d/gesture/Gesture;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/crunchfish/touchless_a3d/TouchlessA3D;->registerGesture(Lcom/crunchfish/touchless_a3d/gesture/Gesture;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    return-object v1

    :catch_0
    move-exception p0

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GestureEngineLoadTask IOException: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :catch_1
    move-exception v2

    .line 236
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GestureEngineLoadTask LicenseServerUnavailableException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iput-boolean v0, p0, Lcom/oplus/camera/o$a;->d:Z

    return-object v1

    :catch_2
    move-exception v2

    .line 232
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GestureEngineLoadTask LicenseNotValidException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iput-boolean v0, p0, Lcom/oplus/camera/o$a;->d:Z

    return-object v1
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 0

    .line 284
    iget-boolean p0, p0, Lcom/oplus/camera/o$a;->d:Z

    if-nez p0, :cond_0

    const-string p0, "GestureEngineManager"

    const-string p1, "Gesture engine init fail"

    .line 285
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 208
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/o$a;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 208
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/o$a;->a(Ljava/lang/Void;)V

    return-void
.end method
