.class public Lcom/oplus/camera/algovisualization/j;
.super Ljava/lang/Object;
.source "VisualizationStatePreferenceHelper.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private f:Landroid/content/SharedPreferences;

.field private g:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "state"

    .line 8
    iput-object v0, p0, Lcom/oplus/camera/algovisualization/j;->a:Ljava/lang/String;

    const-string v0, "visualizationState"

    .line 9
    iput-object v0, p0, Lcom/oplus/camera/algovisualization/j;->b:Ljava/lang/String;

    const-string v0, "pictureState"

    .line 10
    iput-object v0, p0, Lcom/oplus/camera/algovisualization/j;->c:Ljava/lang/String;

    const-string v0, "currentTime"

    .line 11
    iput-object v0, p0, Lcom/oplus/camera/algovisualization/j;->d:Ljava/lang/String;

    const-string v0, "showInfo"

    .line 12
    iput-object v0, p0, Lcom/oplus/camera/algovisualization/j;->e:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x0

    .line 19
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/algovisualization/j;->f:Landroid/content/SharedPreferences;

    .line 20
    iget-object p1, p0, Lcom/oplus/camera/algovisualization/j;->f:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/algovisualization/j;->g:Landroid/content/SharedPreferences$Editor;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/oplus/camera/algovisualization/j;->g:Landroid/content/SharedPreferences$Editor;

    const-string v1, "state"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 41
    iget-object p0, p0, Lcom/oplus/camera/algovisualization/j;->g:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public a()Z
    .locals 2

    .line 24
    iget-object p0, p0, Lcom/oplus/camera/algovisualization/j;->f:Landroid/content/SharedPreferences;

    const-string v0, "state"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public b(Z)V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/oplus/camera/algovisualization/j;->g:Landroid/content/SharedPreferences$Editor;

    const-string v1, "visualizationState"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 46
    iget-object p0, p0, Lcom/oplus/camera/algovisualization/j;->g:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public b()Z
    .locals 2

    .line 28
    iget-object p0, p0, Lcom/oplus/camera/algovisualization/j;->f:Landroid/content/SharedPreferences;

    const-string v0, "visualizationState"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public c(Z)V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/oplus/camera/algovisualization/j;->g:Landroid/content/SharedPreferences$Editor;

    const-string v1, "pictureState"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 51
    iget-object p0, p0, Lcom/oplus/camera/algovisualization/j;->g:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public c()Z
    .locals 2

    .line 32
    iget-object p0, p0, Lcom/oplus/camera/algovisualization/j;->f:Landroid/content/SharedPreferences;

    const-string v0, "pictureState"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public d()J
    .locals 3

    .line 36
    iget-object p0, p0, Lcom/oplus/camera/algovisualization/j;->f:Landroid/content/SharedPreferences;

    const-string v0, "currentTime"

    const-wide/16 v1, 0x0

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
