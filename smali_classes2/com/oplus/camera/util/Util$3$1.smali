.class Lcom/oplus/camera/util/Util$3$1;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/util/Util$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/util/Util$3;


# direct methods
.method constructor <init>(Lcom/oplus/camera/util/Util$3;)V
    .locals 0

    .line 1094
    iput-object p1, p0, Lcom/oplus/camera/util/Util$3$1;->a:Lcom/oplus/camera/util/Util$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1097
    iget-object p0, p0, Lcom/oplus/camera/util/Util$3$1;->a:Lcom/oplus/camera/util/Util$3;

    iget-object p0, p0, Lcom/oplus/camera/util/Util$3;->a:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
