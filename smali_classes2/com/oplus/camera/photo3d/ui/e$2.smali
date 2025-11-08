.class Lcom/oplus/camera/photo3d/ui/e$2;
.super Ljava/lang/Object;
.source "SceneMenu.java"

# interfaces
.implements Lcom/oplus/camera/photo3d/ui/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/photo3d/ui/e;->f()Landroidx/recyclerview/widget/RecyclerView$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/photo3d/ui/e;


# direct methods
.method constructor <init>(Lcom/oplus/camera/photo3d/ui/e;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/oplus/camera/photo3d/ui/e$2;->a:Lcom/oplus/camera/photo3d/ui/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/oplus/camera/photo3d/ui/d;)V
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/e$2;->a:Lcom/oplus/camera/photo3d/ui/e;

    invoke-static {v0}, Lcom/oplus/camera/photo3d/ui/e;->a(Lcom/oplus/camera/photo3d/ui/e;)Lcom/oplus/camera/photo3d/ui/e$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/e$2;->a:Lcom/oplus/camera/photo3d/ui/e;

    invoke-static {v0}, Lcom/oplus/camera/photo3d/ui/e;->b(Lcom/oplus/camera/photo3d/ui/e;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oplus/camera/photo3d/ui/d;->a()I

    move-result v1

    const-string v2, "pref_3d_photo_scene_type"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 135
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/e$2;->a:Lcom/oplus/camera/photo3d/ui/e;

    invoke-static {p0}, Lcom/oplus/camera/photo3d/ui/e;->a(Lcom/oplus/camera/photo3d/ui/e;)Lcom/oplus/camera/photo3d/ui/e$a;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/camera/photo3d/ui/e$a;->a(Lcom/oplus/camera/photo3d/ui/d;)V

    :cond_0
    return-void
.end method
