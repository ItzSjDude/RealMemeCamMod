.class Lcom/oplus/camera/ui/menu/facebeauty/f$1;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "FaceBeautyCustomMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/menu/facebeauty/f;-><init>(Landroid/app/Activity;Landroid/view/View$OnClickListener;Lcom/oplus/camera/ui/menu/facebeauty/f$a;Lcom/oplus/camera/ui/OplusNumSeekBar$a;Lcom/oplus/camera/ui/menu/facebeauty/d$a;Lcom/oplus/camera/ui/preview/a/f;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/oplus/camera/ui/menu/facebeauty/f;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/menu/facebeauty/f;Landroid/content/Context;IZZ)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/f$1;->b:Lcom/oplus/camera/ui/menu/facebeauty/f;

    iput-boolean p5, p0, Lcom/oplus/camera/ui/menu/facebeauty/f$1;->a:Z

    invoke-direct {p0, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method public canScrollHorizontally()Z
    .locals 0

    .line 117
    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f$1;->a:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public canScrollVertically()Z
    .locals 0

    .line 122
    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f$1;->a:Z

    return p0
.end method
