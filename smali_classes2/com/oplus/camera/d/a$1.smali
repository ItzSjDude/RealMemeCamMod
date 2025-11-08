.class Lcom/oplus/camera/d/a$1;
.super Ljava/lang/Object;
.source "Beauty3DEditHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/d/a;->a(Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/d/a;


# direct methods
.method constructor <init>(Lcom/oplus/camera/d/a;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/oplus/camera/d/a$1;->a:Lcom/oplus/camera/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 101
    iget-object p0, p0, Lcom/oplus/camera/d/a$1;->a:Lcom/oplus/camera/d/a;

    invoke-static {p0}, Lcom/oplus/camera/d/a;->a(Lcom/oplus/camera/d/a;)Lcom/oplus/camera/ui/beauty3d/d;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/beauty3d/d;->b(Z)V

    return-void
.end method
