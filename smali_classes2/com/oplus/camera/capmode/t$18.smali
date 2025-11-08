.class Lcom/oplus/camera/capmode/t$18;
.super Ljava/lang/Object;
.source "StickerMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/capmode/t;->a(Lcom/oplus/camera/sticker/data/StickerItem;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/sticker/data/StickerItem;

.field final synthetic b:Lcom/oplus/camera/capmode/t;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/t;Lcom/oplus/camera/sticker/data/StickerItem;)V
    .locals 0

    .line 669
    iput-object p1, p0, Lcom/oplus/camera/capmode/t$18;->b:Lcom/oplus/camera/capmode/t;

    iput-object p2, p0, Lcom/oplus/camera/capmode/t$18;->a:Lcom/oplus/camera/sticker/data/StickerItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a(Lcom/oplus/camera/sticker/data/StickerItem;)V
    .locals 0

    .line 690
    iget-object p0, p0, Lcom/oplus/camera/capmode/t$18;->b:Lcom/oplus/camera/capmode/t;

    invoke-static {p0, p1}, Lcom/oplus/camera/capmode/t;->a(Lcom/oplus/camera/capmode/t;Lcom/oplus/camera/sticker/data/StickerItem;)V

    return-void
.end method

.method public static synthetic lambda$9g2NJHlzNOD6SDoUUxskFbcHuSc(Lcom/oplus/camera/capmode/t$18;Lcom/oplus/camera/sticker/data/StickerItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/capmode/t$18;->a(Lcom/oplus/camera/sticker/data/StickerItem;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 672
    iget-object v0, p0, Lcom/oplus/camera/capmode/t$18;->b:Lcom/oplus/camera/capmode/t;

    iget-object v0, v0, Lcom/oplus/camera/capmode/t;->mActivity:Landroid/app/Activity;

    const-string v1, "StickerMode"

    if-nez v0, :cond_0

    const-string p0, "onStickerItemChange, mActivity is null, so return"

    .line 673
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 678
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/t$18;->b:Lcom/oplus/camera/capmode/t;

    iget-boolean v0, v0, Lcom/oplus/camera/capmode/t;->mbCapModeInit:Z

    if-nez v0, :cond_1

    const-string p0, "onStickerItemChange, already exited from sticker mode, so return"

    .line 679
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 684
    :cond_1
    invoke-static {}, Lcom/oplus/camera/ui/menu/g;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 685
    invoke-static {}, Lcom/oplus/camera/ui/menu/g;->d()V

    .line 686
    invoke-static {}, Lcom/oplus/camera/ui/menu/g;->b()Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 689
    iget-object v1, p0, Lcom/oplus/camera/capmode/t$18;->a:Lcom/oplus/camera/sticker/data/StickerItem;

    new-instance v2, Lcom/oplus/camera/capmode/-$$Lambda$t$18$9g2NJHlzNOD6SDoUUxskFbcHuSc;

    invoke-direct {v2, p0, v1}, Lcom/oplus/camera/capmode/-$$Lambda$t$18$9g2NJHlzNOD6SDoUUxskFbcHuSc;-><init>(Lcom/oplus/camera/capmode/t$18;Lcom/oplus/camera/sticker/data/StickerItem;)V

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->setOnPopUpFadeOutAnimationStartListener(Lcom/oplus/camera/ui/menu/BasicOptionItemList$OnPopUpFadeOutAnimationStartListener;)V

    goto :goto_0

    .line 694
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/capmode/t$18;->b:Lcom/oplus/camera/capmode/t;

    iget-object p0, p0, Lcom/oplus/camera/capmode/t$18;->a:Lcom/oplus/camera/sticker/data/StickerItem;

    invoke-static {v0, p0}, Lcom/oplus/camera/capmode/t;->a(Lcom/oplus/camera/capmode/t;Lcom/oplus/camera/sticker/data/StickerItem;)V

    :cond_3
    :goto_0
    return-void
.end method
