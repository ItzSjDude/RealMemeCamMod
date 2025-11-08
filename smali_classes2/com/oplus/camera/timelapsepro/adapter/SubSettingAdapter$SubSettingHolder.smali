.class public Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter$SubSettingHolder;
.super Lcom/oplus/camera/timelapsepro/adapter/BaseViewHolder;
.source "SubSettingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubSettingHolder"
.end annotation


# instance fields
.field final name:Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 96
    invoke-direct {p0, p1}, Lcom/oplus/camera/timelapsepro/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f09036d

    .line 97
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;

    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter$SubSettingHolder;->name:Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;

    return-void
.end method
