.class public Lcom/oplus/compat/os/EnvironmentNative$UserEnvironment;
.super Ljava/lang/Object;
.source "EnvironmentNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/os/EnvironmentNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserEnvironment"
.end annotation


# instance fields
.field private mUserEnvironment:Landroid/os/Environment$UserEnvironment;

.field private mUserEnvironmentWrapper:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {}, Lcom/oplus/compat/b/a/c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-static {}, Lcom/oplus/compat/os/EnvironmentNative$ReflectInfo;->access$100()Lcom/oplus/utils/reflect/RefConstructor;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/oplus/utils/reflect/RefConstructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/compat/os/EnvironmentNative;->access$002(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 47
    :cond_0
    invoke-static {}, Lcom/oplus/compat/b/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    invoke-static {p1}, Lcom/oplus/compat/os/EnvironmentNative;->access$200(I)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/compat/os/EnvironmentNative$UserEnvironment;->mUserEnvironmentWrapper:Ljava/lang/Object;

    goto :goto_0

    .line 49
    :cond_1
    invoke-static {}, Lcom/oplus/compat/b/a/c;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    new-instance v0, Landroid/os/Environment$UserEnvironment;

    invoke-direct {v0, p1}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    iput-object v0, p0, Lcom/oplus/compat/os/EnvironmentNative$UserEnvironment;->mUserEnvironment:Landroid/os/Environment$UserEnvironment;

    :goto_0
    return-void

    .line 52
    :cond_2
    new-instance p0, Lcom/oplus/compat/b/a/b;

    invoke-direct {p0}, Lcom/oplus/compat/b/a/b;-><init>()V

    throw p0
.end method


# virtual methods
.method public getExternalStorageDirectory()Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 59
    invoke-static {}, Lcom/oplus/compat/b/a/c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-static {}, Lcom/oplus/compat/os/EnvironmentNative$ReflectInfo;->access$300()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object p0

    invoke-static {}, Lcom/oplus/compat/os/EnvironmentNative;->access$000()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    return-object p0

    .line 61
    :cond_0
    invoke-static {}, Lcom/oplus/compat/b/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    iget-object p0, p0, Lcom/oplus/compat/os/EnvironmentNative$UserEnvironment;->mUserEnvironmentWrapper:Ljava/lang/Object;

    invoke-static {p0}, Lcom/oplus/compat/os/EnvironmentNative;->access$400(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    return-object p0

    .line 63
    :cond_1
    invoke-static {}, Lcom/oplus/compat/b/a/c;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64
    iget-object p0, p0, Lcom/oplus/compat/os/EnvironmentNative$UserEnvironment;->mUserEnvironment:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {p0}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p0

    return-object p0

    .line 66
    :cond_2
    new-instance p0, Lcom/oplus/compat/b/a/b;

    invoke-direct {p0}, Lcom/oplus/compat/b/a/b;-><init>()V

    throw p0
.end method
