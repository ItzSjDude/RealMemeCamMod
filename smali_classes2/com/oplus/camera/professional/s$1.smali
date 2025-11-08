.class Lcom/oplus/camera/professional/s$1;
.super Ljava/lang/Object;
.source "ProSwitchButtonManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/professional/s;->a(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:Lcom/oplus/camera/professional/s;


# direct methods
.method constructor <init>(Lcom/oplus/camera/professional/s;IZ)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/oplus/camera/professional/s$1;->c:Lcom/oplus/camera/professional/s;

    iput p2, p0, Lcom/oplus/camera/professional/s$1;->a:I

    iput-boolean p3, p0, Lcom/oplus/camera/professional/s$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 78
    iget v0, p0, Lcom/oplus/camera/professional/s$1;->a:I

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/oplus/camera/professional/s$1;->c:Lcom/oplus/camera/professional/s;

    iget-boolean p0, p0, Lcom/oplus/camera/professional/s$1;->b:Z

    invoke-static {v0, p0}, Lcom/oplus/camera/professional/s;->a(Lcom/oplus/camera/professional/s;Z)V

    goto :goto_0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/s$1;->c:Lcom/oplus/camera/professional/s;

    iget-boolean p0, p0, Lcom/oplus/camera/professional/s$1;->b:Z

    invoke-static {v0, p0}, Lcom/oplus/camera/professional/s;->b(Lcom/oplus/camera/professional/s;Z)V

    :goto_0
    return-void
.end method
