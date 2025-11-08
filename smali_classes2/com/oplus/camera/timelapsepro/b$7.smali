.class Lcom/oplus/camera/timelapsepro/b$7;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "ParameterContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/timelapsepro/b;-><init>(Landroid/content/Context;Lcom/oplus/camera/ComboPreferences;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/timelapsepro/b;


# direct methods
.method constructor <init>(Lcom/oplus/camera/timelapsepro/b;Landroid/content/Context;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/b$7;->a:Lcom/oplus/camera/timelapsepro/b;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public canScrollHorizontally()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canScrollVertically()Z
    .locals 0

    .line 152
    invoke-super {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->canScrollVertically()Z

    move-result p0

    return p0
.end method
