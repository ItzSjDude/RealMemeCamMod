.class Lcom/oplus/camera/ui/menu/a$1$1;
.super Ljava/lang/Object;
.source "APSVisualizationDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/menu/a$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/menu/a$1;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/menu/a$1;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/a$1$1;->a:Lcom/oplus/camera/ui/menu/a$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a$1$1;->a:Lcom/oplus/camera/ui/menu/a$1;

    iget-object v0, v0, Lcom/oplus/camera/ui/menu/a$1;->a:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a$1$1;->a:Lcom/oplus/camera/ui/menu/a$1;

    iget-object v0, v0, Lcom/oplus/camera/ui/menu/a$1;->d:Lcom/oplus/camera/ui/menu/a;

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a$1$1;->a:Lcom/oplus/camera/ui/menu/a$1;

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a$1;->c:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/menu/a;->b(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a$1$1;->a:Lcom/oplus/camera/ui/menu/a$1;

    iget-object v0, v0, Lcom/oplus/camera/ui/menu/a$1;->d:Lcom/oplus/camera/ui/menu/a;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/a;->a(Lcom/oplus/camera/ui/menu/a;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 116
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a$1$1;->a:Lcom/oplus/camera/ui/menu/a$1;

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a$1;->d:Lcom/oplus/camera/ui/menu/a;

    invoke-static {p0}, Lcom/oplus/camera/ui/menu/a;->b(Lcom/oplus/camera/ui/menu/a;)Landroid/content/Context;

    move-result-object p0

    const-string v0, "password is invalid"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
