.class Lcom/oplus/camera/AndroidTestAdapter$1;
.super Ljava/lang/Object;
.source "AndroidTestAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/AndroidTestAdapter;->onVideoPauseResumeClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/AndroidTestAdapter;


# direct methods
.method constructor <init>(Lcom/oplus/camera/AndroidTestAdapter;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/oplus/camera/AndroidTestAdapter$1;->a:Lcom/oplus/camera/AndroidTestAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 119
    iget-object p0, p0, Lcom/oplus/camera/AndroidTestAdapter$1;->a:Lcom/oplus/camera/AndroidTestAdapter;

    invoke-static {p0}, Lcom/oplus/camera/AndroidTestAdapter;->access$000(Lcom/oplus/camera/AndroidTestAdapter;)Landroid/app/Activity;

    move-result-object p0

    const v0, 0x7f090419

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->callOnClick()Z

    return-void
.end method
