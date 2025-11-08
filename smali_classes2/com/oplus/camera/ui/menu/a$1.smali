.class Lcom/oplus/camera/ui/menu/a$1;
.super Ljava/lang/Object;
.source "APSVisualizationDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/menu/a;->a(Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/content/SharedPreferences$Editor;

.field final synthetic d:Lcom/oplus/camera/ui/menu/a;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/menu/a;[ZLjava/lang/String;Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/a$1;->d:Lcom/oplus/camera/ui/menu/a;

    iput-object p2, p0, Lcom/oplus/camera/ui/menu/a$1;->a:[Z

    iput-object p3, p0, Lcom/oplus/camera/ui/menu/a$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/oplus/camera/ui/menu/a$1;->c:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a$1;->a:[Z

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/a$1;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/oplus/camera/algovisualization/e;->a(Ljava/lang/String;)Z

    move-result v2

    aput-boolean v2, v0, v1

    .line 102
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a$1;->d:Lcom/oplus/camera/ui/menu/a;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/a;->a(Lcom/oplus/camera/ui/menu/a;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 105
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 108
    :goto_0
    new-instance v0, Lcom/oplus/camera/ui/menu/a$1$1;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/menu/a$1$1;-><init>(Lcom/oplus/camera/ui/menu/a$1;)V

    invoke-static {v0}, Lcom/oplus/camera/algovisualization/i;->b(Ljava/lang/Runnable;)V

    return-void
.end method
