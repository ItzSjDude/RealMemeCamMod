.class public abstract Lorg/andresoviedo/android_3d_model_engine/c/b;
.super Landroid/os/AsyncTask;
.source "LoaderTask.java"

# interfaces
.implements Lorg/andresoviedo/android_3d_model_engine/c/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        "Ljava/util/List<",
        "Lorg/andresoviedo/android_3d_model_engine/b/g;",
        ">;>;",
        "Lorg/andresoviedo/android_3d_model_engine/c/a;"
    }
.end annotation


# instance fields
.field protected final a:Ljava/net/URI;

.field private final b:Lorg/andresoviedo/android_3d_model_engine/c/a;

.field private final c:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/net/URI;Lorg/andresoviedo/android_3d_model_engine/c/a;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 38
    iput-object p2, p0, Lorg/andresoviedo/android_3d_model_engine/c/b;->a:Ljava/net/URI;

    .line 39
    new-instance p2, Landroid/app/ProgressDialog;

    invoke-direct {p2, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/andresoviedo/android_3d_model_engine/c/b;->c:Landroid/app/ProgressDialog;

    .line 40
    iput-object p3, p0, Lorg/andresoviedo/android_3d_model_engine/c/b;->b:Lorg/andresoviedo/android_3d_model_engine/c/a;

    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/andresoviedo/android_3d_model_engine/b/g;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Lorg/andresoviedo/android_3d_model_engine/b/g;",
            ">;"
        }
    .end annotation

    .line 57
    :try_start_0
    iget-object p1, p0, Lorg/andresoviedo/android_3d_model_engine/c/b;->b:Lorg/andresoviedo/android_3d_model_engine/c/a;

    invoke-interface {p1}, Lorg/andresoviedo/android_3d_model_engine/c/a;->p()V

    .line 58
    invoke-virtual {p0}, Lorg/andresoviedo/android_3d_model_engine/c/b;->a()Ljava/util/List;

    move-result-object p1

    .line 59
    invoke-virtual {p0, p1}, Lorg/andresoviedo/android_3d_model_engine/c/b;->b(Ljava/util/List;)V

    .line 60
    iget-object v0, p0, Lorg/andresoviedo/android_3d_model_engine/c/b;->b:Lorg/andresoviedo/android_3d_model_engine/c/a;

    invoke-interface {v0, p1}, Lorg/andresoviedo/android_3d_model_engine/c/a;->a(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 63
    iget-object p0, p0, Lorg/andresoviedo/android_3d_model_engine/c/b;->b:Lorg/andresoviedo/android_3d_model_engine/c/a;

    invoke-interface {p0, p1}, Lorg/andresoviedo/android_3d_model_engine/c/a;->a(Ljava/lang/Exception;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 0

    .line 96
    iget-object p0, p0, Lorg/andresoviedo/android_3d_model_engine/c/b;->b:Lorg/andresoviedo/android_3d_model_engine/c/a;

    invoke-interface {p0, p1}, Lorg/andresoviedo/android_3d_model_engine/c/a;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/andresoviedo/android_3d_model_engine/b/g;",
            ">;)V"
        }
    .end annotation

    .line 101
    iget-object p0, p0, Lorg/andresoviedo/android_3d_model_engine/c/b;->b:Lorg/andresoviedo/android_3d_model_engine/c/a;

    invoke-interface {p0, p1}, Lorg/andresoviedo/android_3d_model_engine/c/a;->a(Ljava/util/List;)V

    return-void
.end method

.method protected varargs a([Ljava/lang/String;)V
    .locals 1

    .line 77
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 78
    iget-object p0, p0, Lorg/andresoviedo/android_3d_model_engine/c/b;->c:Landroid/app/ProgressDialog;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected abstract b(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/andresoviedo/android_3d_model_engine/b/g;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected c(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/andresoviedo/android_3d_model_engine/b/g;",
            ">;)V"
        }
    .end annotation

    .line 83
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 84
    iget-object p1, p0, Lorg/andresoviedo/android_3d_model_engine/c/b;->c:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 85
    iget-object p0, p0, Lorg/andresoviedo/android_3d_model_engine/c/b;->c:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/andresoviedo/android_3d_model_engine/c/b;->a([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/andresoviedo/android_3d_model_engine/c/b;->c(Ljava/util/List;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 45
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method

.method protected synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/andresoviedo/android_3d_model_engine/c/b;->a([Ljava/lang/String;)V

    return-void
.end method

.method public p()V
    .locals 0

    .line 91
    iget-object p0, p0, Lorg/andresoviedo/android_3d_model_engine/c/b;->b:Lorg/andresoviedo/android_3d_model_engine/c/a;

    invoke-interface {p0}, Lorg/andresoviedo/android_3d_model_engine/c/a;->p()V

    return-void
.end method
