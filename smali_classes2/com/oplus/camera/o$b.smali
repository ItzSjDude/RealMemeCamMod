.class Lcom/oplus/camera/o$b;
.super Landroid/os/AsyncTask;
.source "GestureEngineManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
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


# direct methods
.method private constructor <init>(Lcom/oplus/camera/o;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/oplus/camera/o$b;->a:Lcom/oplus/camera/o;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/camera/o;Lcom/oplus/camera/o$1;)V
    .locals 0

    .line 200
    invoke-direct {p0, p1}, Lcom/oplus/camera/o$b;-><init>(Lcom/oplus/camera/o;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/oplus/camera/o$b;->a:Lcom/oplus/camera/o;

    invoke-static {p0}, Lcom/oplus/camera/o;->c(Lcom/oplus/camera/o;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 200
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/o$b;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method
