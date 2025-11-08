.class Lcom/oplus/camera/AndroidTestAdapter$7;
.super Ljava/lang/Object;
.source "AndroidTestAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/AndroidTestAdapter;->reloadSingleCameraSettingMenu(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/oplus/camera/AndroidTestAdapter;


# direct methods
.method constructor <init>(Lcom/oplus/camera/AndroidTestAdapter;Ljava/lang/String;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/oplus/camera/AndroidTestAdapter$7;->b:Lcom/oplus/camera/AndroidTestAdapter;

    iput-object p2, p0, Lcom/oplus/camera/AndroidTestAdapter$7;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/oplus/camera/AndroidTestAdapter$7;->b:Lcom/oplus/camera/AndroidTestAdapter;

    invoke-static {v0}, Lcom/oplus/camera/AndroidTestAdapter;->access$200(Lcom/oplus/camera/AndroidTestAdapter;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/AndroidTestAdapter$7;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/d;->f(Ljava/lang/String;)V

    return-void
.end method
