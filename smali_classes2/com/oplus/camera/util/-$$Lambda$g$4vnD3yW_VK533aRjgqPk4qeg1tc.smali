.class public final synthetic Lcom/oplus/camera/util/-$$Lambda$g$4vnD3yW_VK533aRjgqPk4qeg1tc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field private final synthetic f$0:Lcom/oplus/camera/util/g$b;

.field private final synthetic f$1:Lcom/oplus/camera/util/g$c;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/camera/util/g$b;Lcom/oplus/camera/util/g$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/util/-$$Lambda$g$4vnD3yW_VK533aRjgqPk4qeg1tc;->f$0:Lcom/oplus/camera/util/g$b;

    iput-object p2, p0, Lcom/oplus/camera/util/-$$Lambda$g$4vnD3yW_VK533aRjgqPk4qeg1tc;->f$1:Lcom/oplus/camera/util/g$c;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/oplus/camera/util/-$$Lambda$g$4vnD3yW_VK533aRjgqPk4qeg1tc;->f$0:Lcom/oplus/camera/util/g$b;

    iget-object p0, p0, Lcom/oplus/camera/util/-$$Lambda$g$4vnD3yW_VK533aRjgqPk4qeg1tc;->f$1:Lcom/oplus/camera/util/g$c;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/oplus/camera/util/g;->lambda$4vnD3yW_VK533aRjgqPk4qeg1tc(Lcom/oplus/camera/util/g$b;Lcom/oplus/camera/util/g$c;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
