.class Lcom/oplus/camera/ui/a/a$3;
.super Ljava/lang/Object;
.source "HintManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/a/a;->a(ILjava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Lcom/oplus/camera/ui/a/a;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/a/a;ILjava/util/ArrayList;)V
    .locals 0

    .line 902
    iput-object p1, p0, Lcom/oplus/camera/ui/a/a$3;->c:Lcom/oplus/camera/ui/a/a;

    iput p2, p0, Lcom/oplus/camera/ui/a/a$3;->a:I

    iput-object p3, p0, Lcom/oplus/camera/ui/a/a$3;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 905
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a$3;->c:Lcom/oplus/camera/ui/a/a;

    iget v1, p0, Lcom/oplus/camera/ui/a/a$3;->a:I

    iget-object p0, p0, Lcom/oplus/camera/ui/a/a$3;->b:Ljava/util/ArrayList;

    invoke-static {v0, v1, p0}, Lcom/oplus/camera/ui/a/a;->a(Lcom/oplus/camera/ui/a/a;ILjava/util/ArrayList;)V

    return-void
.end method
