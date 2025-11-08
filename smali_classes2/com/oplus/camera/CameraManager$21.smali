.class Lcom/oplus/camera/CameraManager$21;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/CameraManager;->bV()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/CameraManager;


# direct methods
.method constructor <init>(Lcom/oplus/camera/CameraManager;)V
    .locals 0

    .line 6250
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$21;->a:Lcom/oplus/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const-string v0, "outputY"

    const-string v1, "outputX"

    const-string v2, "aspectY"

    const-string v3, "aspectX"

    .line 6253
    iget-object v4, p0, Lcom/oplus/camera/CameraManager$21;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->m(Lcom/oplus/camera/CameraManager;)[B

    move-result-object v4

    if-nez v4, :cond_0

    .line 6256
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$21;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->n(Lcom/oplus/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    return-void

    .line 6261
    :cond_0
    iget-object v5, p0, Lcom/oplus/camera/CameraManager$21;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v5}, Lcom/oplus/camera/CameraManager;->aI(Lcom/oplus/camera/CameraManager;)Ljava/lang/String;

    move-result-object v5

    .line 6262
    iget-object v6, p0, Lcom/oplus/camera/CameraManager$21;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v6}, Lcom/oplus/camera/CameraManager;->aJ(Lcom/oplus/camera/CameraManager;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "CameraManager"

    if-nez v5, :cond_4

    const/4 v0, -0x1

    if-eqz v6, :cond_3

    .line 6269
    invoke-static {v6}, Lcom/oplus/camera/Storage;->a(Landroid/net/Uri;)V

    const/4 v1, 0x0

    .line 6273
    :try_start_0
    iget-object v2, p0, Lcom/oplus/camera/CameraManager$21;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 6274
    iget-object v2, p0, Lcom/oplus/camera/CameraManager$21;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    const-string v2, "saveCropImage, open outputStream complete"

    .line 6276
    invoke-static {v8, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    .line 6279
    invoke-virtual {v1, v4}, Ljava/io/OutputStream;->write([B)V

    const-string v2, "saveCropImage, outputStream write complete"

    .line 6281
    invoke-static {v8, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6283
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 6286
    :cond_1
    iget-object v2, p0, Lcom/oplus/camera/CameraManager$21;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v2, v0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;I)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6303
    :cond_2
    :goto_0
    invoke-static {v1}, Lcom/oplus/camera/util/Util;->a(Ljava/io/Closeable;)V

    goto/16 :goto_3

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 6299
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveCropImage, SecurityException error, exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 6301
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$21;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0, v7}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;I)I

    goto :goto_0

    :catch_1
    move-exception v0

    .line 6294
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveCropImage, IOException error, exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2, v0}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6296
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 6297
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$21;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0, v7}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;I)I

    goto :goto_0

    :catch_2
    move-exception v2

    .line 6289
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveCropImage, FileNotFoundException: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 6291
    iget-object v2, p0, Lcom/oplus/camera/CameraManager$21;->a:Lcom/oplus/camera/CameraManager;

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$21;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3, v4}, Lcom/oplus/camera/CameraManager;->b(Lcom/oplus/camera/CameraManager;[B)Landroid/content/Intent;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;Landroid/content/Intent;)Landroid/content/Intent;

    .line 6292
    iget-object v2, p0, Lcom/oplus/camera/CameraManager$21;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v2, v0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6303
    :goto_1
    invoke-static {v1}, Lcom/oplus/camera/util/Util;->a(Ljava/io/Closeable;)V

    .line 6304
    throw p0

    .line 6306
    :cond_3
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$21;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1, v4}, Lcom/oplus/camera/CameraManager;->b(Lcom/oplus/camera/CameraManager;[B)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;Landroid/content/Intent;)Landroid/content/Intent;

    .line 6307
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$21;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1, v0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;I)I

    goto/16 :goto_3

    .line 6313
    :cond_4
    iget-object v5, p0, Lcom/oplus/camera/CameraManager$21;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v5}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 6314
    iget-object v5, p0, Lcom/oplus/camera/CameraManager$21;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v5}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v5

    const-string v9, "crop-temp"

    invoke-virtual {v5, v9}, Landroid/app/Activity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 6315
    iget-object v9, p0, Lcom/oplus/camera/CameraManager$21;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v9}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 6317
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    const-string v11, "image/jpeg"

    invoke-static {v10, v11, v4}, Lcom/oplus/camera/q/a;->b(Ljava/lang/String;Ljava/lang/String;[B)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 6318
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 6326
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 6328
    iget-object v10, p0, Lcom/oplus/camera/CameraManager$21;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v10}, Lcom/oplus/camera/CameraManager;->aI(Lcom/oplus/camera/CameraManager;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "circle"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const-string v10, "circleCrop"

    const-string v11, "true"

    .line 6329
    invoke-virtual {v5, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-eqz v6, :cond_6

    const-string v10, "output"

    .line 6333
    invoke-virtual {v5, v10, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_2

    :cond_6
    const/4 v6, 0x1

    const-string v10, "return-data"

    .line 6335
    invoke-virtual {v5, v10, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6338
    :goto_2
    iget-object v6, p0, Lcom/oplus/camera/CameraManager$21;->a:Lcom/oplus/camera/CameraManager;

    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.android.camera.action.CROP"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v10}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;Landroid/content/Intent;)Landroid/content/Intent;

    .line 6339
    iget-object v6, p0, Lcom/oplus/camera/CameraManager$21;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v6}, Lcom/oplus/camera/CameraManager;->aK(Lcom/oplus/camera/CameraManager;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    if-eqz v9, :cond_7

    .line 6342
    :try_start_2
    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 6343
    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6344
    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v5, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6345
    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6346
    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6349
    :cond_7
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$21;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->aK(Lcom/oplus/camera/CameraManager;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "image/*"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 6350
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$21;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->aK(Lcom/oplus/camera/CameraManager;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_set_as_contract"

    const-string v2, "set_as_contract"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6351
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$21;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->aK(Lcom/oplus/camera/CameraManager;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 6352
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$21;->a:Lcom/oplus/camera/CameraManager;

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 6354
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 6355
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$21;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0, v7}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;I)I

    goto :goto_3

    .line 6320
    :cond_8
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$21;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0, v7}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;I)I

    .line 6321
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$21;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->n(Lcom/oplus/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    return-void

    .line 6359
    :cond_9
    :goto_3
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$21;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->n(Lcom/oplus/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    const-string p0, "saveCropImage, end"

    .line 6361
    invoke-static {v8, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
