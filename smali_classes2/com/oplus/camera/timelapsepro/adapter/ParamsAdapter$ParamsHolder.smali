.class Lcom/oplus/camera/timelapsepro/adapter/ParamsAdapter$ParamsHolder;
.super Lcom/oplus/camera/timelapsepro/adapter/BaseViewHolder;
.source "ParamsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/timelapsepro/adapter/ParamsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ParamsHolder"
.end annotation


# instance fields
.field final item:Lcom/oplus/camera/timelapsepro/ParameterItem;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 78
    invoke-direct {p0, p1}, Lcom/oplus/camera/timelapsepro/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0901f5

    .line 79
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/timelapsepro/ParameterItem;

    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/adapter/ParamsAdapter$ParamsHolder;->item:Lcom/oplus/camera/timelapsepro/ParameterItem;

    return-void
.end method
