.class public Lcom/oplus/camera/ui/preview/a/j;
.super Ljava/lang/Object;
.source "FilterHelper.java"


# static fields
.field private static A:I

.field private static B:I

.field private static C:I

.field private static D:I

.field private static E:I

.field private static F:I

.field private static G:I

.field private static H:I

.field private static I:I

.field private static J:I

.field private static K:I

.field private static L:I

.field private static M:I

.field private static N:I

.field private static O:I

.field private static P:I

.field private static Q:I

.field private static R:I

.field private static S:I

.field private static T:I

.field private static U:I

.field private static V:I

.field private static W:F

.field private static X:F

.field private static Y:F

.field private static Z:F

.field public static a:I

.field private static aA:I

.field private static aB:I

.field private static aC:I

.field private static aD:I

.field private static aE:I

.field private static aF:Z

.field private static aa:I

.field private static ab:F

.field private static ac:I

.field private static ad:I

.field private static ae:I

.field private static af:I

.field private static ag:I

.field private static ah:I

.field private static ai:I

.field private static aj:Landroid/graphics/Bitmap;

.field private static ak:Landroid/graphics/Bitmap;

.field private static al:Landroid/graphics/Bitmap;

.field private static am:Landroid/graphics/Bitmap;

.field private static an:Landroid/text/TextPaint;

.field private static ao:I

.field private static ap:I

.field private static aq:I

.field private static ar:I

.field private static as:I

.field private static at:Landroid/graphics/Rect;

.field private static au:Landroid/graphics/Paint$FontMetricsInt;

.field private static av:F

.field private static aw:I

.field private static ax:I

.field private static ay:I

.field private static az:I

.field public static b:Ljava/lang/String;

.field public static c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static e:Lcom/oplus/camera/ui/preview/a/i;

.field public static f:Lcom/oplus/camera/ui/preview/a/i;

.field public static g:Lcom/oplus/camera/ui/preview/a/i;

.field public static h:Lcom/oplus/camera/ui/preview/a/i;

.field public static i:Lcom/oplus/camera/ui/preview/a/i;

.field public static j:Lcom/oplus/camera/ui/preview/a/i;

.field public static k:Lcom/oplus/camera/ui/preview/a/i;

.field public static l:Lcom/oplus/camera/ui/preview/a/i;

.field public static m:Lcom/oplus/camera/ui/preview/a/i;

.field public static n:Lcom/oplus/camera/ui/preview/a/i;

.field public static o:Lcom/oplus/camera/ui/preview/a/i;

.field public static p:Lcom/oplus/camera/ui/preview/a/i;

.field public static q:Lcom/oplus/camera/ui/preview/a/i;

.field private static final r:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static t:Z

.field private static u:Z

.field private static v:Z

.field private static w:Z

.field private static x:Z

.field private static y:Z

.field private static z:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oplus/camera/ui/preview/a/j;->r:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 95
    sput v0, Lcom/oplus/camera/ui/preview/a/j;->a:I

    const-string v1, "None"

    .line 96
    sput-object v1, Lcom/oplus/camera/ui/preview/a/j;->b:Ljava/lang/String;

    .line 97
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/oplus/camera/ui/preview/a/j;->c:Ljava/util/HashMap;

    .line 98
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/oplus/camera/ui/preview/a/j;->d:Ljava/util/HashMap;

    .line 100
    new-instance v1, Lcom/oplus/camera/ui/preview/a/i;

    invoke-direct {v1}, Lcom/oplus/camera/ui/preview/a/i;-><init>()V

    sput-object v1, Lcom/oplus/camera/ui/preview/a/j;->e:Lcom/oplus/camera/ui/preview/a/i;

    .line 101
    new-instance v1, Lcom/oplus/camera/ui/preview/a/i;

    invoke-direct {v1}, Lcom/oplus/camera/ui/preview/a/i;-><init>()V

    sput-object v1, Lcom/oplus/camera/ui/preview/a/j;->f:Lcom/oplus/camera/ui/preview/a/i;

    .line 102
    new-instance v1, Lcom/oplus/camera/ui/preview/a/i;

    invoke-direct {v1}, Lcom/oplus/camera/ui/preview/a/i;-><init>()V

    sput-object v1, Lcom/oplus/camera/ui/preview/a/j;->g:Lcom/oplus/camera/ui/preview/a/i;

    .line 103
    new-instance v1, Lcom/oplus/camera/ui/preview/a/i;

    invoke-direct {v1}, Lcom/oplus/camera/ui/preview/a/i;-><init>()V

    sput-object v1, Lcom/oplus/camera/ui/preview/a/j;->h:Lcom/oplus/camera/ui/preview/a/i;

    .line 104
    new-instance v1, Lcom/oplus/camera/ui/preview/a/i;

    invoke-direct {v1}, Lcom/oplus/camera/ui/preview/a/i;-><init>()V

    sput-object v1, Lcom/oplus/camera/ui/preview/a/j;->i:Lcom/oplus/camera/ui/preview/a/i;

    .line 105
    new-instance v1, Lcom/oplus/camera/ui/preview/a/i;

    invoke-direct {v1}, Lcom/oplus/camera/ui/preview/a/i;-><init>()V

    sput-object v1, Lcom/oplus/camera/ui/preview/a/j;->j:Lcom/oplus/camera/ui/preview/a/i;

    .line 106
    new-instance v1, Lcom/oplus/camera/ui/preview/a/i;

    invoke-direct {v1}, Lcom/oplus/camera/ui/preview/a/i;-><init>()V

    sput-object v1, Lcom/oplus/camera/ui/preview/a/j;->k:Lcom/oplus/camera/ui/preview/a/i;

    .line 107
    new-instance v1, Lcom/oplus/camera/ui/preview/a/i;

    invoke-direct {v1}, Lcom/oplus/camera/ui/preview/a/i;-><init>()V

    sput-object v1, Lcom/oplus/camera/ui/preview/a/j;->l:Lcom/oplus/camera/ui/preview/a/i;

    .line 108
    new-instance v1, Lcom/oplus/camera/ui/preview/a/i;

    invoke-direct {v1}, Lcom/oplus/camera/ui/preview/a/i;-><init>()V

    sput-object v1, Lcom/oplus/camera/ui/preview/a/j;->m:Lcom/oplus/camera/ui/preview/a/i;

    .line 109
    new-instance v1, Lcom/oplus/camera/ui/preview/a/i;

    invoke-direct {v1}, Lcom/oplus/camera/ui/preview/a/i;-><init>()V

    sput-object v1, Lcom/oplus/camera/ui/preview/a/j;->n:Lcom/oplus/camera/ui/preview/a/i;

    .line 110
    new-instance v1, Lcom/oplus/camera/ui/preview/a/i;

    invoke-direct {v1}, Lcom/oplus/camera/ui/preview/a/i;-><init>()V

    sput-object v1, Lcom/oplus/camera/ui/preview/a/j;->o:Lcom/oplus/camera/ui/preview/a/i;

    .line 111
    new-instance v1, Lcom/oplus/camera/ui/preview/a/i;

    invoke-direct {v1}, Lcom/oplus/camera/ui/preview/a/i;-><init>()V

    sput-object v1, Lcom/oplus/camera/ui/preview/a/j;->p:Lcom/oplus/camera/ui/preview/a/i;

    .line 112
    new-instance v1, Lcom/oplus/camera/ui/preview/a/i;

    invoke-direct {v1}, Lcom/oplus/camera/ui/preview/a/i;-><init>()V

    sput-object v1, Lcom/oplus/camera/ui/preview/a/j;->q:Lcom/oplus/camera/ui/preview/a/i;

    const/4 v1, 0x0

    .line 113
    sput-object v1, Lcom/oplus/camera/ui/preview/a/j;->s:Ljava/util/List;

    .line 115
    sput-boolean v0, Lcom/oplus/camera/ui/preview/a/j;->t:Z

    .line 116
    sput-boolean v0, Lcom/oplus/camera/ui/preview/a/j;->u:Z

    .line 117
    sput-boolean v0, Lcom/oplus/camera/ui/preview/a/j;->v:Z

    .line 118
    sput-boolean v0, Lcom/oplus/camera/ui/preview/a/j;->w:Z

    .line 119
    sput-boolean v0, Lcom/oplus/camera/ui/preview/a/j;->x:Z

    .line 120
    sput-boolean v0, Lcom/oplus/camera/ui/preview/a/j;->y:Z

    const/4 v2, -0x1

    .line 121
    sput v2, Lcom/oplus/camera/ui/preview/a/j;->z:I

    .line 122
    sput v2, Lcom/oplus/camera/ui/preview/a/j;->A:I

    .line 123
    sput v2, Lcom/oplus/camera/ui/preview/a/j;->B:I

    .line 124
    sput v2, Lcom/oplus/camera/ui/preview/a/j;->C:I

    .line 125
    sput v2, Lcom/oplus/camera/ui/preview/a/j;->D:I

    .line 126
    sput v2, Lcom/oplus/camera/ui/preview/a/j;->E:I

    .line 127
    sput v2, Lcom/oplus/camera/ui/preview/a/j;->F:I

    .line 128
    sput v2, Lcom/oplus/camera/ui/preview/a/j;->G:I

    .line 129
    sput v2, Lcom/oplus/camera/ui/preview/a/j;->H:I

    .line 130
    sput v2, Lcom/oplus/camera/ui/preview/a/j;->I:I

    .line 131
    sput v2, Lcom/oplus/camera/ui/preview/a/j;->J:I

    .line 132
    sput v2, Lcom/oplus/camera/ui/preview/a/j;->K:I

    .line 133
    sput v2, Lcom/oplus/camera/ui/preview/a/j;->L:I

    .line 134
    sput v2, Lcom/oplus/camera/ui/preview/a/j;->M:I

    .line 135
    sput v2, Lcom/oplus/camera/ui/preview/a/j;->N:I

    .line 136
    sput v2, Lcom/oplus/camera/ui/preview/a/j;->O:I

    .line 137
    sput v2, Lcom/oplus/camera/ui/preview/a/j;->P:I

    .line 138
    sput v2, Lcom/oplus/camera/ui/preview/a/j;->Q:I

    .line 139
    sput v0, Lcom/oplus/camera/ui/preview/a/j;->R:I

    .line 140
    sput v0, Lcom/oplus/camera/ui/preview/a/j;->S:I

    .line 141
    sput v0, Lcom/oplus/camera/ui/preview/a/j;->T:I

    .line 142
    sput v0, Lcom/oplus/camera/ui/preview/a/j;->U:I

    .line 143
    sput v0, Lcom/oplus/camera/ui/preview/a/j;->V:I

    const/4 v2, 0x0

    .line 145
    sput v2, Lcom/oplus/camera/ui/preview/a/j;->W:F

    .line 146
    sput v2, Lcom/oplus/camera/ui/preview/a/j;->X:F

    .line 147
    sput v2, Lcom/oplus/camera/ui/preview/a/j;->Y:F

    .line 148
    sput v2, Lcom/oplus/camera/ui/preview/a/j;->Z:F

    .line 149
    sput v0, Lcom/oplus/camera/ui/preview/a/j;->aa:I

    .line 150
    sput v2, Lcom/oplus/camera/ui/preview/a/j;->ab:F

    .line 151
    sput v0, Lcom/oplus/camera/ui/preview/a/j;->ac:I

    .line 152
    sput v0, Lcom/oplus/camera/ui/preview/a/j;->ad:I

    .line 153
    sput v0, Lcom/oplus/camera/ui/preview/a/j;->ae:I

    .line 154
    sput v0, Lcom/oplus/camera/ui/preview/a/j;->af:I

    .line 155
    sput v0, Lcom/oplus/camera/ui/preview/a/j;->ag:I

    .line 156
    sput v0, Lcom/oplus/camera/ui/preview/a/j;->ah:I

    .line 157
    sput v0, Lcom/oplus/camera/ui/preview/a/j;->ai:I

    .line 159
    sput-object v1, Lcom/oplus/camera/ui/preview/a/j;->aj:Landroid/graphics/Bitmap;

    .line 160
    sput-object v1, Lcom/oplus/camera/ui/preview/a/j;->ak:Landroid/graphics/Bitmap;

    .line 161
    sput-object v1, Lcom/oplus/camera/ui/preview/a/j;->al:Landroid/graphics/Bitmap;

    .line 162
    sput-object v1, Lcom/oplus/camera/ui/preview/a/j;->am:Landroid/graphics/Bitmap;

    .line 164
    sput-object v1, Lcom/oplus/camera/ui/preview/a/j;->an:Landroid/text/TextPaint;

    .line 165
    sput v0, Lcom/oplus/camera/ui/preview/a/j;->ao:I

    .line 166
    sput v0, Lcom/oplus/camera/ui/preview/a/j;->ap:I

    .line 167
    sput v0, Lcom/oplus/camera/ui/preview/a/j;->aq:I

    .line 168
    sput v0, Lcom/oplus/camera/ui/preview/a/j;->ar:I

    const/4 v3, 0x4

    .line 169
    sput v3, Lcom/oplus/camera/ui/preview/a/j;->as:I

    .line 170
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    sput-object v3, Lcom/oplus/camera/ui/preview/a/j;->at:Landroid/graphics/Rect;

    .line 171
    sput-object v1, Lcom/oplus/camera/ui/preview/a/j;->au:Landroid/graphics/Paint$FontMetricsInt;

    .line 172
    sput v2, Lcom/oplus/camera/ui/preview/a/j;->av:F

    .line 173
    sput v0, Lcom/oplus/camera/ui/preview/a/j;->aw:I

    .line 174
    sput v0, Lcom/oplus/camera/ui/preview/a/j;->ax:I

    .line 175
    sput v0, Lcom/oplus/camera/ui/preview/a/j;->ay:I

    .line 176
    sput v0, Lcom/oplus/camera/ui/preview/a/j;->az:I

    .line 177
    sput v0, Lcom/oplus/camera/ui/preview/a/j;->aA:I

    .line 178
    sput v0, Lcom/oplus/camera/ui/preview/a/j;->aB:I

    .line 179
    sput v0, Lcom/oplus/camera/ui/preview/a/j;->aC:I

    .line 180
    sput v0, Lcom/oplus/camera/ui/preview/a/j;->aD:I

    .line 181
    sput v0, Lcom/oplus/camera/ui/preview/a/j;->aE:I

    .line 182
    sput-boolean v0, Lcom/oplus/camera/ui/preview/a/j;->aF:Z

    const-string v1, "/odm/etc/camera/filters_lut/"

    .line 185
    invoke-static {v1}, Lco/polarr/renderer/FilterPackageUtil;->setStaticLUTPath(Ljava/lang/String;)V

    const-string v1, "/odm/etc/camera/filters_res/"

    .line 186
    invoke-static {v1}, Lco/polarr/renderer/PolarrRender;->SetStaticResPath(Ljava/lang/String;)V

    .line 188
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->F()V

    .line 189
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->H()V

    .line 190
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->I()V

    .line 192
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->c()V

    .line 193
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->E()V

    .line 194
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->G()V

    .line 195
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->D()V

    .line 196
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->J()V

    .line 197
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->K()V

    .line 199
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->O()V

    .line 201
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->L()V

    .line 202
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->M()V

    .line 204
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->o:Lcom/oplus/camera/ui/preview/a/i;

    sget-object v2, Lcom/oplus/camera/ui/preview/a/j;->e:Lcom/oplus/camera/ui/preview/a/i;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Lcom/oplus/camera/ui/preview/a/i;->a(Lcom/oplus/camera/ui/preview/a/i;ZZ)V

    .line 205
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->h:Lcom/oplus/camera/ui/preview/a/i;

    sget-object v2, Lcom/oplus/camera/ui/preview/a/j;->e:Lcom/oplus/camera/ui/preview/a/i;

    invoke-virtual {v1, v2, v3, v0}, Lcom/oplus/camera/ui/preview/a/i;->a(Lcom/oplus/camera/ui/preview/a/i;ZZ)V

    .line 206
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->p:Lcom/oplus/camera/ui/preview/a/i;

    sget-object v2, Lcom/oplus/camera/ui/preview/a/j;->e:Lcom/oplus/camera/ui/preview/a/i;

    invoke-virtual {v1, v2, v3, v0}, Lcom/oplus/camera/ui/preview/a/i;->a(Lcom/oplus/camera/ui/preview/a/i;ZZ)V

    const/4 v1, 0x2

    .line 207
    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/oplus/camera/ui/preview/a/j;->e:Lcom/oplus/camera/ui/preview/a/i;

    aput-object v2, v1, v0

    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->o:Lcom/oplus/camera/ui/preview/a/i;

    aput-object v0, v1, v3

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/a/j;->a([Ljava/lang/Object;)V

    return-void
.end method

.method public static A()F
    .locals 1

    .line 2526
    sget v0, Lcom/oplus/camera/ui/preview/a/j;->W:F

    return v0
.end method

.method public static B()F
    .locals 1

    .line 2530
    sget v0, Lcom/oplus/camera/ui/preview/a/j;->ab:F

    return v0
.end method

.method public static C()F
    .locals 1

    .line 2534
    sget v0, Lcom/oplus/camera/ui/preview/a/j;->X:F

    return v0
.end method

.method private static D()V
    .locals 3

    const-string v0, "com.oplus.fuji.style.filter.support"

    .line 211
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->l:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f10017f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "default"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->d(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 213
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->l:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f10015e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "type_fuji_provia"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->d(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 214
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->l:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f10015f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "type_fuji_velvia"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->d(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 215
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->l:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f10015c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "type_fuji_astia"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->d(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 216
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->l:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f10015d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "type_fuji_chrome"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->d(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 217
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->l:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f10015b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "type_fuji_acros"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->d(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method private static E()V
    .locals 14

    .line 256
    invoke-static {}, Lcom/oplus/camera/util/Util;->am()Z

    move-result v0

    const v1, 0x7f1000e9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "oplus_video_filter_neon"

    const-string v3, "com.oplus.video.only.blur.support"

    const-string v4, "com.oplus.video.neon.support"

    const v5, 0x7f1006df

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "sky-blue.cube.rgb.bin"

    const v7, 0x7f1006e2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "tree-green.cube.rgb.bin"

    const v9, 0x7f1006e3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "red-red.cube.rgb.bin"

    const-string v11, "com.oplus.video.color_extraction.support"

    const v12, 0x7f10017f

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "default"

    if-eqz v0, :cond_2

    .line 257
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->j:Lcom/oplus/camera/ui/preview/a/i;

    invoke-virtual {v0, v13, v12}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 259
    invoke-static {v11}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->j:Lcom/oplus/camera/ui/preview/a/i;

    invoke-virtual {v0, v10, v9}, Lcom/oplus/camera/ui/preview/a/i;->d(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 261
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->j:Lcom/oplus/camera/ui/preview/a/i;

    invoke-virtual {v0, v8, v7}, Lcom/oplus/camera/ui/preview/a/i;->d(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 262
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->j:Lcom/oplus/camera/ui/preview/a/i;

    invoke-virtual {v0, v6, v5}, Lcom/oplus/camera/ui/preview/a/i;->d(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 265
    :cond_0
    invoke-static {v4}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    invoke-static {v3}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 267
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->j:Lcom/oplus/camera/ui/preview/a/i;

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 270
    :cond_1
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->j:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f100196

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "V01-landscape-2.6.CUBE.rgb.bin"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 271
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->j:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f100191

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "cyberpunk-neoMilitarism-2.4-final.CUBE.rgb.bin"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 272
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->j:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f100195

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "cyberpunk-kitsch-3.1.CUBE.rgb.bin"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 273
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->j:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f10019b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "V02-portrait-2.5.CUBE.rgb.bin"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 274
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->j:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f10019d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "V03-food-2.0.CUBE.rgb.bin"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 275
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->j:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f10018f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "V04-night-1.3.CUBE.rgb.bin"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 276
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->j:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f100183

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "V05-mono-3.3.CUBE.rgb.bin"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 278
    :cond_2
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->j:Lcom/oplus/camera/ui/preview/a/i;

    invoke-virtual {v0, v13, v12}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 280
    invoke-static {v11}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 281
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->j:Lcom/oplus/camera/ui/preview/a/i;

    invoke-virtual {v0, v10, v9}, Lcom/oplus/camera/ui/preview/a/i;->d(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 282
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->j:Lcom/oplus/camera/ui/preview/a/i;

    invoke-virtual {v0, v8, v7}, Lcom/oplus/camera/ui/preview/a/i;->d(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 283
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->j:Lcom/oplus/camera/ui/preview/a/i;

    invoke-virtual {v0, v6, v5}, Lcom/oplus/camera/ui/preview/a/i;->d(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3
    const-string v0, "com.oplus.video.retention.support"

    .line 286
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 287
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->j:Lcom/oplus/camera/ui/preview/a/i;

    const v5, 0x7f1001a1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "oplus_video_filter_portrait_retention"

    invoke-virtual {v0, v6, v5}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 290
    :cond_4
    invoke-static {v4}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 291
    invoke-static {v3}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 292
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->j:Lcom/oplus/camera/ui/preview/a/i;

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 295
    :cond_5
    invoke-static {}, Lcom/oplus/camera/util/Util;->ak()Z

    move-result v0

    const-string v1, "sweet-V2.CUBE.rgb.bin"

    const-string v2, "delight-V1.CUBE.rgb.bin"

    if-eqz v0, :cond_6

    .line 296
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->j:Lcom/oplus/camera/ui/preview/a/i;

    const v3, 0x7f1004b7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 297
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->j:Lcom/oplus/camera/ui/preview/a/i;

    const v2, 0x7f1004b8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 298
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->j:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f1004b5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mellow-V3.CUBE.rgb.bin"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 299
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->j:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f1004b4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "misty-V4.CUBE.rgb.bin"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 300
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->j:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f1004ad

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "calm-V5.CUBE.rgb.bin"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 301
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->j:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f1004a4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "oplus_video_filter_black_and_white"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 302
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->j:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f1004a7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "farewell-V7.CUBE.rgb.bin"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 304
    :cond_6
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->j:Lcom/oplus/camera/ui/preview/a/i;

    const v3, 0x7f1004b6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 305
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->j:Lcom/oplus/camera/ui/preview/a/i;

    const v2, 0x7f1004a9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 306
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->j:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f1004b2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mellow-V3.CUBE.rgb.bin"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 307
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->j:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f1004a8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "misty-V4.CUBE.rgb.bin"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 308
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->j:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f1004ae

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "calm-V5.CUBE.rgb.bin"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 309
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->j:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f1004a6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "oplus_video_filter_black_and_white"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 310
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->j:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f1004a2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "farewell-V7.CUBE.rgb.bin"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_0
    return-void
.end method

.method private static F()V
    .locals 14

    .line 316
    invoke-static {}, Lcom/oplus/camera/util/Util;->am()Z

    move-result v0

    const-string v1, "com.oplus.photo.master.filter.type.list"

    const v2, 0x7f10017f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "default"

    if-eqz v0, :cond_0

    .line 317
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->e:Lcom/oplus/camera/ui/preview/a/i;

    invoke-virtual {v0, v3, v2}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 319
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->e:Lcom/oplus/camera/ui/preview/a/i;

    invoke-static {v1, v0}, Lcom/oplus/camera/ui/preview/a/j;->a(Ljava/lang/String;Lcom/oplus/camera/ui/preview/a/i;)V

    .line 321
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->e:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f100199

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PP1-soft-2.6.CUBE.rgb.bin"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 322
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->e:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f100196

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "V01-landscape-2.6.CUBE.rgb.bin"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 323
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->e:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f100191

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "cyberpunk-neoMilitarism-2.4-final.CUBE.rgb.bin"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 324
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->e:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f100195

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "cyberpunk-kitsch-3.1.CUBE.rgb.bin"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 325
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->e:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f100181

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "B612Pretty.cube.rgb.bin"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 326
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->e:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f100189

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "InsJuno.cube.rgb.bin"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 327
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->e:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f100182

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BeautyplusMellow-5.CUBE.rgb.bin"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 328
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->e:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f10018a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "InsValencia-2.cube.rgb.bin"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 329
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->e:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f10019c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "YoucamAdorable80.cube.rgb.bin"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 330
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->e:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f100188

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "InsClarendon.cube.rgb.bin"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 331
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->e:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f10019a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SweetSnapAlice-3.CUBE.rgb.bin"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 332
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->e:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f100184

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "V05-mono-3.3.CUBE.rgb.bin"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 333
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->e:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f100186

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FaceappGrayscale.cube.rgb.bin"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 334
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->e:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f100198

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SnapseedBright.cube.rgb.bin"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 335
    :cond_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->ak()Z

    move-result v0

    const-string v4, "jiari-2.0.cube.rgb.bin"

    const-string v5, "serene-P9.CUBE.rgb.bin"

    const-string v6, "b-w-P8.CUBE.rgb.bin"

    const-string v7, "candy-P7.CUBE.rgb.bin"

    const-string v8, "yuanqi-2.2s.cube.rgb.bin"

    const-string v9, "misty-P5.CUBE.rgb.bin"

    const-string v10, "r1JaFSZZG"

    const-string v11, "delight-P3.CUBE.rgb.bin"

    const-string v12, "sweet-P2.CUBE.rgb.bin"

    const-string v13, "natural-P1.CUBE.rgb.bin"

    if-eqz v0, :cond_1

    .line 336
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->e:Lcom/oplus/camera/ui/preview/a/i;

    invoke-virtual {v0, v3, v2}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 337
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->e:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f1001af

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v13, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 338
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->e:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f1001a3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v12, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 339
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->e:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f1001ad

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 340
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->e:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f1001a6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 341
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->e:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f1001a9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 342
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->e:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f100180

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 343
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->e:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f10017d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 344
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->e:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f100172

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 345
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->e:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f100155

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 346
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->e:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f1001a4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 348
    :cond_1
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->e:Lcom/oplus/camera/ui/preview/a/i;

    invoke-virtual {v0, v3, v2}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 350
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 351
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->e:Lcom/oplus/camera/ui/preview/a/i;

    invoke-static {v1, v0}, Lcom/oplus/camera/ui/preview/a/j;->a(Ljava/lang/String;Lcom/oplus/camera/ui/preview/a/i;)V

    .line 354
    :cond_2
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->e:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f10017e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v13, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 355
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->e:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f10019e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v12, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 356
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->e:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f1001ab

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 357
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->e:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f1001ac

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 358
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->e:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f100179

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 359
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->e:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f100176

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 360
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->e:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f1001ae

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 361
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->e:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f100177

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 362
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->e:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f1001aa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 363
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->e:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f1001a8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_0
    return-void
.end method

.method private static G()V
    .locals 12

    const-string v0, "com.oplus.street.filter.type.list"

    .line 395
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigStringListValue(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 398
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->n:Lcom/oplus/camera/ui/preview/a/i;

    const v2, 0x7f10017f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "default"

    invoke-virtual {v1, v3, v2}, Lcom/oplus/camera/ui/preview/a/i;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 400
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, -0x1

    .line 401
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const-string v4, "OPLUSR0604.cube.rgb.bin"

    const-string v5, "DL_D_G4.cube.rgb.bin"

    const-string v6, "oplus-r-infra-RGB.CUBE.rgb.bin"

    const-string v7, "bright_coloured.bin"

    const-string v8, "oplus-r-cyberpunk-RGB.CUBE.rgb.bin"

    const-string v9, "DL_L_B6.cube.rgb.bin"

    const-string v10, "interstellar_space.bin"

    const-string v11, "oplus-r-black-gold-1.1-RGB.CUBE.rgb.bin"

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_1
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_2
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_3
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x6

    goto :goto_1

    :sswitch_4
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_5
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_6
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x7

    goto :goto_1

    :sswitch_7
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x3

    :cond_0
    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 431
    :pswitch_0
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->n:Lcom/oplus/camera/ui/preview/a/i;

    const v2, 0x7f100623

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v10, v2}, Lcom/oplus/camera/ui/preview/a/i;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 427
    :pswitch_1
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->n:Lcom/oplus/camera/ui/preview/a/i;

    const v2, 0x7f10061e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Lcom/oplus/camera/ui/preview/a/i;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 423
    :pswitch_2
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->n:Lcom/oplus/camera/ui/preview/a/i;

    const v2, 0x7f100621

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lcom/oplus/camera/ui/preview/a/i;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 419
    :pswitch_3
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->n:Lcom/oplus/camera/ui/preview/a/i;

    const v2, 0x7f10061f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Lcom/oplus/camera/ui/preview/a/i;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 415
    :pswitch_4
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->n:Lcom/oplus/camera/ui/preview/a/i;

    const v2, 0x7f100624

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v11, v2}, Lcom/oplus/camera/ui/preview/a/i;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 411
    :pswitch_5
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->n:Lcom/oplus/camera/ui/preview/a/i;

    const v2, 0x7f10069d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lcom/oplus/camera/ui/preview/a/i;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 407
    :pswitch_6
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->n:Lcom/oplus/camera/ui/preview/a/i;

    const v2, 0x7f10069b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v9, v2}, Lcom/oplus/camera/ui/preview/a/i;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 403
    :pswitch_7
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->n:Lcom/oplus/camera/ui/preview/a/i;

    const v2, 0x7f10069c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/oplus/camera/ui/preview/a/i;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    :cond_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5f38aa59 -> :sswitch_7
        -0x519cf327 -> :sswitch_6
        -0x2e460ac3 -> :sswitch_5
        -0x94ca081 -> :sswitch_4
        0x13b3a129 -> :sswitch_3
        0x32fcac2a -> :sswitch_2
        0x49f8853c -> :sswitch_1
        0x7c2104a8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static H()V
    .locals 3

    .line 442
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->f:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f10017f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "default"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->d(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 443
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->f:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f100151

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "anc_filtert_polyspin"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->d(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 444
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->f:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f10014e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "anc_filtert_hexagon"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->d(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 445
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->f:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f100150

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "anc_filtert_concentric_circles"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->d(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 446
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->f:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f10014f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "anc_filtert_spiral"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->d(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 447
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->f:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f100152

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "anc_filtert_cell_greenorange"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->d(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method private static I()V
    .locals 12

    .line 451
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->i:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f10017f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "default"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 453
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->i:Lcom/oplus/camera/ui/preview/a/i;

    const-string v1, "com.oplus.portrait.master.filter.type.list"

    invoke-static {v1, v0}, Lcom/oplus/camera/ui/preview/a/j;->a(Ljava/lang/String;Lcom/oplus/camera/ui/preview/a/i;)V

    const-string v0, "com.oplus.feature.portrait.streamer.support"

    .line 455
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->i:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f1001a2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "portrait_streamer"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->d(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    const-string v0, "com.oplus.feature.portrait.retention.support"

    .line 459
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "com.oplus.feature.portrait.front.retention.support"

    .line 460
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    const v1, 0x7f1001a1

    const-string v2, "portrait_retention"

    if-eqz v0, :cond_1

    .line 461
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->i:Lcom/oplus/camera/ui/preview/a/i;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/oplus/camera/ui/preview/a/i;->c(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 464
    :cond_1
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->i:Lcom/oplus/camera/ui/preview/a/i;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->d(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    const-string v0, "com.oplus.feature.portrait.neon.support"

    .line 467
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    const v1, 0x7f1000e9

    const-string v2, "neon-2020.cube.rgb.bin"

    if-eqz v0, :cond_3

    .line 468
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->i:Lcom/oplus/camera/ui/preview/a/i;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/oplus/camera/ui/preview/a/i;->d(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3
    const-string v0, "com.oplus.feature.portrait.neon.front.support"

    .line 471
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 472
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->i:Lcom/oplus/camera/ui/preview/a/i;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->c(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 475
    :cond_4
    invoke-static {}, Lcom/oplus/camera/util/Util;->ak()Z

    move-result v0

    const-string v1, "jiari-2.0.cube.rgb.bin"

    const-string v2, "serene-P9.CUBE.rgb.bin"

    const-string v3, "b-w-P8.CUBE.rgb.bin"

    const-string v4, "candy-P7.CUBE.rgb.bin"

    const-string v5, "yuanqi-2.2s.cube.rgb.bin"

    const-string v6, "misty-P5.CUBE.rgb.bin"

    const-string v7, "r1JaFSZZG"

    const-string v8, "delight-P3.CUBE.rgb.bin"

    const-string v9, "sweet-P2.CUBE.rgb.bin"

    const-string v10, "natural-P1.CUBE.rgb.bin"

    if-eqz v0, :cond_5

    .line 476
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->i:Lcom/oplus/camera/ui/preview/a/i;

    const v11, 0x7f1001af

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 477
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->i:Lcom/oplus/camera/ui/preview/a/i;

    const v10, 0x7f1001a3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 478
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->i:Lcom/oplus/camera/ui/preview/a/i;

    const v9, 0x7f1001ad

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 479
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->i:Lcom/oplus/camera/ui/preview/a/i;

    const v8, 0x7f1001a6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 480
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->i:Lcom/oplus/camera/ui/preview/a/i;

    const v7, 0x7f1001a9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 481
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->i:Lcom/oplus/camera/ui/preview/a/i;

    const v6, 0x7f100180

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 482
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->i:Lcom/oplus/camera/ui/preview/a/i;

    const v5, 0x7f10017d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 483
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->i:Lcom/oplus/camera/ui/preview/a/i;

    const v4, 0x7f100172

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 484
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->i:Lcom/oplus/camera/ui/preview/a/i;

    const v3, 0x7f100155

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 485
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->i:Lcom/oplus/camera/ui/preview/a/i;

    const v2, 0x7f1001a4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 487
    :cond_5
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->i:Lcom/oplus/camera/ui/preview/a/i;

    const v11, 0x7f10017e

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 488
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->i:Lcom/oplus/camera/ui/preview/a/i;

    const v10, 0x7f10019e

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 489
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->i:Lcom/oplus/camera/ui/preview/a/i;

    const v9, 0x7f1001ab

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 490
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->i:Lcom/oplus/camera/ui/preview/a/i;

    const v8, 0x7f1001ac

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 491
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->i:Lcom/oplus/camera/ui/preview/a/i;

    const v7, 0x7f100179

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 492
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->i:Lcom/oplus/camera/ui/preview/a/i;

    const v6, 0x7f100176

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 493
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->i:Lcom/oplus/camera/ui/preview/a/i;

    const v5, 0x7f1001ae

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 494
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->i:Lcom/oplus/camera/ui/preview/a/i;

    const v4, 0x7f100177

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 495
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->i:Lcom/oplus/camera/ui/preview/a/i;

    const v3, 0x7f1001aa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 496
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->i:Lcom/oplus/camera/ui/preview/a/i;

    const v2, 0x7f1001a8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 499
    :goto_0
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->i:Lcom/oplus/camera/ui/preview/a/i;

    iget-object v0, v0, Lcom/oplus/camera/ui/preview/a/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Lcom/oplus/camera/ui/preview/a/j;->V:I

    return-void
.end method

.method private static J()V
    .locals 3

    .line 539
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->g:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f10017f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "default"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->d(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 541
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->g:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f100199

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Delta400.3dl.rgb.bin"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->d(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method private static K()V
    .locals 13

    .line 546
    invoke-static {}, Lcom/oplus/camera/util/Util;->am()Z

    move-result v0

    const v1, 0x7f10017f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "default"

    if-eqz v0, :cond_0

    .line 547
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->m:Lcom/oplus/camera/ui/preview/a/i;

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 548
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->m:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f100199

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PP1-soft-2.6.CUBE.rgb.bin"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 549
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->m:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f100196

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "V01-landscape-2.6.CUBE.rgb.bin"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 550
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->m:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f100191

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "cyberpunk-neoMilitarism-2.4-final.CUBE.rgb.bin"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 551
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->m:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f100195

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "cyberpunk-kitsch-3.1.CUBE.rgb.bin"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 552
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->m:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f100181

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "B612Pretty.cube.rgb.bin"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 553
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->m:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f100189

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "InsJuno.cube.rgb.bin"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 554
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->m:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f100182

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BeautyplusMellow-5.CUBE.rgb.bin"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 555
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->m:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f10018a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "InsValencia-2.cube.rgb.bin"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 556
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->m:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f10019c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "YoucamAdorable80.cube.rgb.bin"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 557
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->m:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f100188

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "InsClarendon.cube.rgb.bin"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 558
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->m:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f10019a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SweetSnapAlice-3.CUBE.rgb.bin"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 559
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->m:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f100184

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "V05-mono-3.3.CUBE.rgb.bin"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 560
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->m:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f100186

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FaceappGrayscale.cube.rgb.bin"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 561
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->m:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f100198

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SnapseedBright.cube.rgb.bin"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 562
    :cond_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->ak()Z

    move-result v0

    const-string v3, "jiari-2.0.cube.rgb.bin"

    const-string v4, "serene-P9.CUBE.rgb.bin"

    const-string v5, "b-w-P8.CUBE.rgb.bin"

    const-string v6, "candy-P7.CUBE.rgb.bin"

    const-string v7, "yuanqi-2.2s.cube.rgb.bin"

    const-string v8, "misty-P5.CUBE.rgb.bin"

    const-string v9, "r1JaFSZZG"

    const-string v10, "delight-P3.CUBE.rgb.bin"

    const-string v11, "sweet-P2.CUBE.rgb.bin"

    const-string v12, "natural-P1.CUBE.rgb.bin"

    if-eqz v0, :cond_1

    .line 563
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->m:Lcom/oplus/camera/ui/preview/a/i;

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 564
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->m:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f1001af

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v12, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 565
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->m:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f1001a3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 566
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->m:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f1001ad

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 567
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->m:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f1001a6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 568
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->m:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f1001a9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 569
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->m:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f100180

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 570
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->m:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f10017d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 571
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->m:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f100172

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 572
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->m:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f100155

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 573
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->m:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f1001a4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 575
    :cond_1
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->m:Lcom/oplus/camera/ui/preview/a/i;

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 576
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->m:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f10017e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v12, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 577
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->m:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f10019e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 578
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->m:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f1001ab

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 579
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->m:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f1001ac

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 580
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->m:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f100179

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 581
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->m:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f100176

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 582
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->m:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f1001ae

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 583
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->m:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f100177

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 584
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->m:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f1001aa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 585
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->m:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f1001a8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_0
    return-void
.end method

.method private static L()V
    .locals 15

    .line 590
    invoke-static {}, Lcom/oplus/camera/util/Util;->am()Z

    move-result v0

    const v1, 0x7f10017f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "default"

    if-eqz v0, :cond_0

    .line 591
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->k:Lcom/oplus/camera/ui/preview/a/i;

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->d(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 592
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->k:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f100199

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PP1-soft-2.6.CUBE.rgb.bin"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->d(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 593
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->k:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f100196

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "V01-landscape-2.6.CUBE.rgb.bin"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->d(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 594
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->k:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f100190

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "oplus-black-gold.cube.rgb.bin"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->d(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 595
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->k:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f100194

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "oplus-yellow-blue.cube.rgb.bin"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->d(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 596
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->k:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f100192

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "oplus-cyberpunk.cube.rgb.bin"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->d(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 597
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->k:Lcom/oplus/camera/ui/preview/a/i;

    const v1, 0x7f100191

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "oplus-nightcity.cube.rgb.bin"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->d(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2

    :cond_0
    const-string v0, "com.oplus.night.filter.type.list"

    .line 599
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigStringListValue(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 602
    sget-object v3, Lcom/oplus/camera/ui/preview/a/j;->k:Lcom/oplus/camera/ui/preview/a/i;

    invoke-virtual {v3, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 604
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, -0x1

    .line 605
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const-string v4, "black_gold.bin"

    const-string v5, "bright_coloured.bin"

    const-string v6, "interstellar_space.bin"

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    const-string v12, "oplus-r-infra-RGB.CUBE.rgb.bin"

    const-string v13, "oplus-r-cyberpunk-RGB.CUBE.rgb.bin"

    const-string v14, "oplus-r-black-gold-1.1-RGB.CUBE.rgb.bin"

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v2, v10

    goto :goto_1

    :sswitch_1
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v2, v9

    goto :goto_1

    :sswitch_2
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v2, v7

    goto :goto_1

    :sswitch_3
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v2, v11

    goto :goto_1

    :sswitch_4
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v2, v8

    goto :goto_1

    :sswitch_5
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    :cond_1
    :goto_1
    if-eqz v2, :cond_7

    if-eq v2, v11, :cond_6

    if-eq v2, v10, :cond_5

    if-eq v2, v9, :cond_4

    if-eq v2, v8, :cond_3

    if-eq v2, v7, :cond_2

    goto :goto_0

    .line 630
    :cond_2
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->k:Lcom/oplus/camera/ui/preview/a/i;

    const v2, 0x7f10061e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lcom/oplus/camera/ui/preview/a/i;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 626
    :cond_3
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->k:Lcom/oplus/camera/ui/preview/a/i;

    const v2, 0x7f100623

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lcom/oplus/camera/ui/preview/a/i;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 622
    :cond_4
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->k:Lcom/oplus/camera/ui/preview/a/i;

    const v2, 0x7f10061c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/oplus/camera/ui/preview/a/i;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 617
    :cond_5
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->k:Lcom/oplus/camera/ui/preview/a/i;

    const v2, 0x7f100621

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v12, v2}, Lcom/oplus/camera/ui/preview/a/i;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 618
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->e:Lcom/oplus/camera/ui/preview/a/i;

    const v2, 0x7f100621

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v12, v2}, Lcom/oplus/camera/ui/preview/a/i;->d(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 612
    :cond_6
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->k:Lcom/oplus/camera/ui/preview/a/i;

    const v2, 0x7f10061f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v13, v3}, Lcom/oplus/camera/ui/preview/a/i;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 613
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->e:Lcom/oplus/camera/ui/preview/a/i;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v13, v2}, Lcom/oplus/camera/ui/preview/a/i;->d(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 607
    :cond_7
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->k:Lcom/oplus/camera/ui/preview/a/i;

    const v2, 0x7f100624

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v14, v3}, Lcom/oplus/camera/ui/preview/a/i;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 608
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->e:Lcom/oplus/camera/ui/preview/a/i;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v14, v2}, Lcom/oplus/camera/ui/preview/a/i;->d(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    :cond_8
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5f38aa59 -> :sswitch_5
        -0x519cf327 -> :sswitch_4
        -0x94ca081 -> :sswitch_3
        0x13b3a129 -> :sswitch_2
        0x2e55e6b9 -> :sswitch_1
        0x32fcac2a -> :sswitch_0
    .end sparse-switch
.end method

.method private static M()V
    .locals 2

    .line 644
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oplus/camera/ui/preview/a/j;->s:Ljava/util/List;

    .line 646
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->s:Ljava/util/List;

    const-string v1, "neon-2020.cube.rgb.bin"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 647
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->s:Ljava/util/List;

    const-string v1, "oplus_video_filter_neon"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 649
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->s:Ljava/util/List;

    const-string v1, "red-red.cube.rgb.bin"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 650
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->s:Ljava/util/List;

    const-string v1, "tree-green.cube.rgb.bin"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 651
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->s:Ljava/util/List;

    const-string v1, "sky-blue.cube.rgb.bin"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 653
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->s:Ljava/util/List;

    const-string v1, "portrait_retention"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 654
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->s:Ljava/util/List;

    const-string v1, "oplus_video_filter_portrait_retention"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static N()V
    .locals 3

    .line 732
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->i:Lcom/oplus/camera/ui/preview/a/i;

    iget-object v0, v0, Lcom/oplus/camera/ui/preview/a/i;->a:Ljava/util/List;

    const-string v1, "portrait_retention"

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/oplus/camera/ui/preview/a/j;->L:I

    .line 733
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->i:Lcom/oplus/camera/ui/preview/a/i;

    iget-object v0, v0, Lcom/oplus/camera/ui/preview/a/i;->b:Ljava/util/List;

    const-string v2, "portrait_streamer"

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/oplus/camera/ui/preview/a/j;->D:I

    .line 734
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->i:Lcom/oplus/camera/ui/preview/a/i;

    iget-object v0, v0, Lcom/oplus/camera/ui/preview/a/i;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/oplus/camera/ui/preview/a/j;->K:I

    .line 735
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->i:Lcom/oplus/camera/ui/preview/a/i;

    iget-object v0, v0, Lcom/oplus/camera/ui/preview/a/i;->a:Ljava/util/List;

    const-string v1, "neon-2020.cube.rgb.bin"

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/oplus/camera/ui/preview/a/j;->F:I

    .line 736
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->i:Lcom/oplus/camera/ui/preview/a/i;

    iget-object v0, v0, Lcom/oplus/camera/ui/preview/a/i;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/oplus/camera/ui/preview/a/j;->E:I

    .line 737
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->i:Lcom/oplus/camera/ui/preview/a/i;

    iget-object v0, v0, Lcom/oplus/camera/ui/preview/a/i;->a:Ljava/util/List;

    const-string v1, "default"

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/oplus/camera/ui/preview/a/j;->N:I

    .line 738
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->i:Lcom/oplus/camera/ui/preview/a/i;

    iget-object v0, v0, Lcom/oplus/camera/ui/preview/a/i;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/oplus/camera/ui/preview/a/j;->M:I

    .line 740
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->e:Lcom/oplus/camera/ui/preview/a/i;

    iget-object v0, v0, Lcom/oplus/camera/ui/preview/a/i;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/oplus/camera/ui/preview/a/j;->Q:I

    return-void
.end method

.method private static O()V
    .locals 2

    .line 744
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->j:Lcom/oplus/camera/ui/preview/a/i;

    iget-object v0, v0, Lcom/oplus/camera/ui/preview/a/i;->a:Ljava/util/List;

    const-string v1, "oplus_video_filter_neon"

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/oplus/camera/ui/preview/a/j;->H:I

    .line 745
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->j:Lcom/oplus/camera/ui/preview/a/i;

    iget-object v0, v0, Lcom/oplus/camera/ui/preview/a/i;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/oplus/camera/ui/preview/a/j;->G:I

    .line 746
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->j:Lcom/oplus/camera/ui/preview/a/i;

    iget-object v0, v0, Lcom/oplus/camera/ui/preview/a/i;->a:Ljava/util/List;

    const-string v1, "oplus_video_filter_portrait_retention"

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/oplus/camera/ui/preview/a/j;->J:I

    .line 747
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->j:Lcom/oplus/camera/ui/preview/a/i;

    iget-object v0, v0, Lcom/oplus/camera/ui/preview/a/i;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/oplus/camera/ui/preview/a/j;->I:I

    .line 748
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->j:Lcom/oplus/camera/ui/preview/a/i;

    iget-object v0, v0, Lcom/oplus/camera/ui/preview/a/i;->a:Ljava/util/List;

    const-string v1, "default"

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/oplus/camera/ui/preview/a/j;->P:I

    .line 749
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->j:Lcom/oplus/camera/ui/preview/a/i;

    iget-object v0, v0, Lcom/oplus/camera/ui/preview/a/i;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/oplus/camera/ui/preview/a/j;->O:I

    return-void
.end method

.method private static P()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "FilterHelper"

    const-string v1, "parseGrandTourCityFilterFromAsset"

    .line 775
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "city_filter_oplus.json"

    .line 780
    invoke-static {v1}, Lcom/oplus/camera/util/Util;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 786
    :cond_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 787
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_4

    .line 790
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "Locality"

    .line 791
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "domestic"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "com.oplus.feature.grand.tour.domestic"

    .line 794
    invoke-static {v6}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_3

    :cond_1
    const-string v6, "Value"

    .line 798
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const-string v7, "CityTag"

    .line 799
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 800
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v8, v3

    .line 802
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_2

    .line 803
    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    move v6, v3

    .line 806
    :goto_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v6, v8, :cond_3

    .line 807
    sget-object v8, Lcom/oplus/camera/ui/preview/a/j;->r:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 812
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseGrandTourCityFilterFromAsset, cityList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/oplus/camera/ui/preview/a/j;->r:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseGrandTourCityFilterFromAsset, cityFilterMap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/oplus/camera/ui/preview/a/j;->r:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic Q()V
    .locals 2

    :try_start_0
    const-string v0, "FilterHelper"

    const-string v1, "parseGrandTourCityFilterList"

    .line 820
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->r:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 823
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->P()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 825
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;I)I
    .locals 1

    .line 1619
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->e:Lcom/oplus/camera/ui/preview/a/i;

    invoke-static {p1}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/preview/a/i;->a(Z)Ljava/util/List;

    move-result-object p1

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 1625
    :cond_0
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private static synthetic a(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .locals 0

    .line 832
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p1, p0}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public static a(Z)I
    .locals 0

    if-eqz p0, :cond_0

    .line 2091
    sget p0, Lcom/oplus/camera/ui/preview/a/j;->H:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/oplus/camera/ui/preview/a/j;->G:I

    :goto_0
    return p0
.end method

.method private static a(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 1166
    invoke-static {p0, p1, v0}, Landroidx/core/a/a/f;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1169
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    .line 1170
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1169
    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1171
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1172
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1173
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-object v0
.end method

.method public static a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 6

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 2118
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    .line 2119
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v1, p2

    mul-float/2addr v1, p1

    float-to-int p1, v1

    .line 2122
    sget v1, Lcom/oplus/camera/ui/preview/a/j;->ai:I

    div-int/lit8 v1, v1, 0x2

    .line 2124
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v2}, Lcom/oplus/camera/util/Util;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2125
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2126
    new-instance v4, Landroid/graphics/Rect;

    sub-int v5, p1, v0

    sub-int/2addr v5, v1

    div-int/lit8 v5, v5, 0x2

    add-int/2addr p1, v0

    add-int/2addr p1, v1

    div-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    invoke-direct {v4, v5, v0, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 p1, 0x0

    invoke-virtual {v3, p0, p1, v4, p1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v2
.end method

.method public static a(Lcom/oplus/camera/ui/menu/levelcontrol/i;IIZ)Landroid/graphics/Bitmap;
    .locals 20

    move/from16 v0, p1

    .line 2149
    sget v1, Lcom/oplus/camera/ui/preview/a/j;->W:F

    .line 2150
    sget v2, Lcom/oplus/camera/ui/preview/a/j;->X:F

    .line 2152
    sget-object v3, Lcom/oplus/camera/ui/preview/a/j;->an:Landroid/text/TextPaint;

    if-eqz p3, :cond_0

    sget v4, Lcom/oplus/camera/ui/preview/a/j;->ap:I

    goto :goto_0

    :cond_0
    sget v4, Lcom/oplus/camera/ui/preview/a/j;->ao:I

    :goto_0
    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 2153
    sget-object v3, Lcom/oplus/camera/ui/preview/a/j;->an:Landroid/text/TextPaint;

    sget v4, Lcom/oplus/camera/ui/preview/a/j;->as:I

    int-to-float v4, v4

    if-eqz p3, :cond_1

    sget v5, Lcom/oplus/camera/ui/preview/a/j;->ar:I

    goto :goto_1

    :cond_1
    sget v5, Lcom/oplus/camera/ui/preview/a/j;->aq:I

    :goto_1
    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v6, v5}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 2154
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v4, p2

    invoke-static {v0, v4, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 2155
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/high16 v4, 0x42b40000    # 90.0f

    .line 2156
    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2157
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    neg-int v0, v0

    int-to-float v0, v0

    .line 2158
    invoke-virtual {v3, v6, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2161
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v6

    goto :goto_2

    :cond_2
    move v0, v2

    .line 2172
    :goto_2
    sget-boolean v4, Lcom/oplus/camera/ui/preview/a/j;->aF:Z

    if-eqz v4, :cond_3

    .line 2173
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->b()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 2176
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->b()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v8, v6

    move v9, v8

    move v10, v9

    move v11, v10

    move v6, v0

    const/4 v0, 0x0

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/oplus/camera/ui/preview/a/k;

    .line 2177
    iget-object v13, v12, Lcom/oplus/camera/ui/preview/a/k;->b:Ljava/lang/String;

    .line 2178
    iget-boolean v14, v12, Lcom/oplus/camera/ui/preview/a/k;->d:Z

    .line 2179
    sget-object v15, Lcom/oplus/camera/ui/preview/a/j;->an:Landroid/text/TextPaint;

    invoke-virtual {v15, v13}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v15

    const/16 v16, 0x1

    const/high16 v17, 0x40000000    # 2.0f

    if-nez v0, :cond_4

    .line 2183
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->an:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 2184
    iget v8, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v9, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v8, v9

    .line 2186
    sget v9, Lcom/oplus/camera/ui/preview/a/j;->ad:I

    int-to-float v9, v9

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float v0, v8, v0

    add-float/2addr v9, v0

    .line 2189
    sget v0, Lcom/oplus/camera/ui/preview/a/j;->ad:I

    int-to-float v0, v0

    div-float v10, v8, v17

    add-float/2addr v0, v10

    sget-object v10, Lcom/oplus/camera/ui/preview/a/j;->al:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float v10, v10, v17

    sub-float/2addr v0, v10

    .line 2192
    sget v10, Lcom/oplus/camera/ui/preview/a/j;->ad:I

    int-to-float v10, v10

    move v11, v8

    move v8, v10

    move v10, v0

    move/from16 v0, v16

    :cond_4
    if-eqz v14, :cond_5

    .line 2196
    sget-object v18, Lcom/oplus/camera/ui/preview/a/j;->am:Landroid/graphics/Bitmap;

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v1

    div-float v5, v5, v17

    sget v18, Lcom/oplus/camera/ui/preview/a/j;->Z:F

    sub-float v5, v5, v18

    goto :goto_4

    :cond_5
    div-float v5, v1, v17

    :goto_4
    move/from16 p2, v0

    const-string v0, "\n"

    .line 2202
    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_6

    move-object/from16 p3, v4

    const/4 v4, 0x2

    move-object/from16 v18, v7

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    if-ne v4, v7, :cond_7

    move/from16 v4, v16

    goto :goto_5

    :cond_6
    move-object/from16 p3, v4

    move-object/from16 v18, v7

    :cond_7
    const/4 v4, 0x0

    :goto_5
    if-nez v4, :cond_a

    .line 2204
    sget v7, Lcom/oplus/camera/ui/preview/a/j;->af:I

    int-to-float v7, v7

    invoke-static {v15, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-gtz v7, :cond_a

    if-eqz v14, :cond_8

    .line 2206
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->am:Landroid/graphics/Bitmap;

    sub-float v4, v1, v15

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v4, v7

    div-float v4, v4, v17

    add-float/2addr v4, v6

    sget v7, Lcom/oplus/camera/ui/preview/a/j;->Z:F

    sub-float/2addr v4, v7

    const/4 v7, 0x0

    invoke-virtual {v3, v0, v4, v8, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_8
    add-float/2addr v5, v6

    div-float v0, v15, v17

    sub-float/2addr v5, v0

    .line 2210
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->an:Landroid/text/TextPaint;

    invoke-virtual {v3, v13, v5, v9, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2212
    iget-boolean v0, v12, Lcom/oplus/camera/ui/preview/a/k;->c:Z

    if-eqz v0, :cond_9

    .line 2213
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->al:Landroid/graphics/Bitmap;

    add-float/2addr v15, v1

    div-float v15, v15, v17

    add-float/2addr v15, v6

    sget v4, Lcom/oplus/camera/ui/preview/a/j;->ag:I

    int-to-float v4, v4

    add-float/2addr v15, v4

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v15, v10, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_9
    move/from16 v16, v2

    move/from16 v19, v10

    goto/16 :goto_a

    :cond_a
    if-eqz v4, :cond_c

    .line 2222
    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :cond_b
    move/from16 v16, v2

    goto :goto_7

    :cond_c
    move/from16 v0, v16

    .line 2224
    :goto_6
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v0, v7, :cond_b

    sget-object v7, Lcom/oplus/camera/ui/preview/a/j;->an:Landroid/text/TextPaint;

    move/from16 v16, v2

    const/4 v15, 0x0

    .line 2225
    invoke-virtual {v13, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    sget v7, Lcom/oplus/camera/ui/preview/a/j;->af:I

    int-to-float v7, v7

    invoke-static {v2, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-gtz v2, :cond_d

    add-int/lit8 v0, v0, 0x1

    move/from16 v2, v16

    goto :goto_6

    :cond_d
    :goto_7
    add-int/lit8 v2, v0, -0x1

    const/4 v7, 0x0

    .line 2231
    invoke-virtual {v13, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2232
    sget-object v15, Lcom/oplus/camera/ui/preview/a/j;->an:Landroid/text/TextPaint;

    invoke-virtual {v15, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v15

    if-eqz v14, :cond_e

    .line 2235
    sget-object v14, Lcom/oplus/camera/ui/preview/a/j;->am:Landroid/graphics/Bitmap;

    sub-float v19, v1, v15

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    sub-float v19, v19, v7

    div-float v19, v19, v17

    add-float v19, v6, v19

    sget v7, Lcom/oplus/camera/ui/preview/a/j;->Z:F

    sub-float v7, v19, v7

    move/from16 v19, v10

    const/4 v10, 0x0

    invoke-virtual {v3, v14, v7, v8, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_8

    :cond_e
    move/from16 v19, v10

    :goto_8
    add-float/2addr v5, v6

    div-float v15, v15, v17

    sub-float v7, v5, v15

    .line 2239
    sget-object v10, Lcom/oplus/camera/ui/preview/a/j;->an:Landroid/text/TextPaint;

    invoke-virtual {v3, v2, v7, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    xor-int/lit8 v2, v4, 0x1

    sub-int v2, v0, v2

    .line 2240
    invoke-virtual {v13, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 2241
    sget-object v4, Lcom/oplus/camera/ui/preview/a/j;->an:Landroid/text/TextPaint;

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 2243
    iget-boolean v7, v12, Lcom/oplus/camera/ui/preview/a/k;->c:Z

    if-eqz v7, :cond_f

    .line 2244
    sget-object v7, Lcom/oplus/camera/ui/preview/a/j;->al:Landroid/graphics/Bitmap;

    add-float v10, v1, v4

    div-float v10, v10, v17

    add-float/2addr v10, v6

    sget v12, Lcom/oplus/camera/ui/preview/a/j;->ag:I

    int-to-float v12, v12

    add-float/2addr v10, v12

    div-float v12, v11, v17

    add-float v12, v19, v12

    const/4 v14, 0x0

    invoke-virtual {v3, v7, v10, v12, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2248
    :cond_f
    sget v7, Lcom/oplus/camera/ui/preview/a/j;->af:I

    int-to-float v7, v7

    invoke-static {v4, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-gtz v7, :cond_10

    div-float v4, v4, v17

    sub-float/2addr v5, v4

    add-float v0, v9, v11

    .line 2249
    sget-object v4, Lcom/oplus/camera/ui/preview/a/j;->an:Landroid/text/TextPaint;

    invoke-virtual {v3, v2, v5, v0, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_a

    :cond_10
    add-int/lit8 v2, v0, 0x1

    .line 2253
    :goto_9
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v4

    const-string v7, "..."

    if-ge v2, v4, :cond_11

    sget-object v4, Lcom/oplus/camera/ui/preview/a/j;->an:Landroid/text/TextPaint;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v12, v0, -0x1

    .line 2254
    invoke-virtual {v13, v12, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    sget v10, Lcom/oplus/camera/ui/preview/a/j;->af:I

    int-to-float v10, v10

    invoke-static {v4, v10}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-gtz v4, :cond_11

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 2258
    :cond_11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v13, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2259
    sget-object v2, Lcom/oplus/camera/ui/preview/a/j;->an:Landroid/text/TextPaint;

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    div-float v2, v2, v17

    sub-float/2addr v5, v2

    add-float v2, v9, v11

    .line 2260
    sget-object v4, Lcom/oplus/camera/ui/preview/a/j;->an:Landroid/text/TextPaint;

    invoke-virtual {v3, v0, v5, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_a
    add-float v2, v1, v16

    add-float/2addr v6, v2

    move/from16 v0, p2

    move-object/from16 v4, p3

    move/from16 v2, v16

    move-object/from16 v7, v18

    move/from16 v10, v19

    goto/16 :goto_3

    :cond_12
    move-object/from16 v18, v7

    .line 2267
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->n()Z

    move-result v0

    if-nez v0, :cond_13

    sget-boolean v0, Lcom/oplus/camera/ui/preview/a/j;->aF:Z

    if-eqz v0, :cond_17

    .line 2268
    :cond_13
    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    .line 2269
    sget-boolean v0, Lcom/oplus/camera/ui/preview/a/j;->aF:Z

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    if-eqz v0, :cond_14

    move v0, v1

    goto :goto_b

    :cond_14
    move v0, v2

    :goto_b
    sget-boolean v4, Lcom/oplus/camera/ui/preview/a/j;->aF:Z

    if-eqz v4, :cond_15

    move v4, v2

    goto :goto_c

    :cond_15
    move v4, v1

    :goto_c
    invoke-virtual {v12, v0, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 2271
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->o()Z

    move-result v0

    if-eqz v0, :cond_16

    sget-boolean v0, Lcom/oplus/camera/ui/preview/a/j;->aF:Z

    if-nez v0, :cond_16

    .line 2272
    invoke-virtual {v12, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    :cond_16
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 2275
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    const/4 v13, 0x1

    move-object/from16 v7, v18

    invoke-static/range {v7 .. v13}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    move-object/from16 v18, v7

    .line 2278
    :cond_17
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    return-object v18
.end method

.method public static a(Lcom/oplus/camera/ui/menu/levelcontrol/i;IIZI)Landroid/graphics/Bitmap;
    .locals 14

    move/from16 v0, p4

    .line 2285
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->an:Landroid/text/TextPaint;

    if-eqz p3, :cond_0

    sget v2, Lcom/oplus/camera/ui/preview/a/j;->ap:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/oplus/camera/ui/preview/a/j;->ao:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 2286
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->an:Landroid/text/TextPaint;

    sget v2, Lcom/oplus/camera/ui/preview/a/j;->as:I

    int-to-float v2, v2

    if-eqz p3, :cond_1

    sget v3, Lcom/oplus/camera/ui/preview/a/j;->ar:I

    goto :goto_1

    :cond_1
    sget v3, Lcom/oplus/camera/ui/preview/a/j;->aq:I

    :goto_1
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 2287
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move v2, p1

    move/from16 v3, p2

    invoke-static {p1, v3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 2288
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    .line 2295
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v6, v4

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oplus/camera/ui/preview/a/k;

    .line 2296
    iget-object v8, v7, Lcom/oplus/camera/ui/preview/a/k;->b:Ljava/lang/String;

    .line 2297
    sget-object v9, Lcom/oplus/camera/ui/preview/a/j;->an:Landroid/text/TextPaint;

    invoke-virtual {v9, v8}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    if-nez v2, :cond_2

    const/4 v2, 0x1

    .line 2301
    sget-object v4, Lcom/oplus/camera/ui/preview/a/j;->an:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    .line 2302
    iget v6, v4, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v11, v4, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v6, v11

    .line 2304
    sget v11, Lcom/oplus/camera/ui/preview/a/j;->ad:I

    int-to-float v11, v11

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float v4, v6, v4

    add-float/2addr v4, v11

    .line 2307
    sget v11, Lcom/oplus/camera/ui/preview/a/j;->ad:I

    int-to-float v11, v11

    div-float/2addr v6, v10

    add-float/2addr v11, v6

    sget-object v6, Lcom/oplus/camera/ui/preview/a/j;->al:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v10

    sub-float v6, v11, v6

    .line 2310
    :cond_2
    sget v11, Lcom/oplus/camera/ui/preview/a/j;->ab:F

    sub-float/2addr v11, v9

    div-float/2addr v11, v10

    sget-object v12, Lcom/oplus/camera/ui/preview/a/j;->an:Landroid/text/TextPaint;

    invoke-virtual {v1, v8, v11, v4, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2312
    iget-boolean v7, v7, Lcom/oplus/camera/ui/preview/a/k;->c:Z

    if-eqz v7, :cond_3

    .line 2313
    sget-object v7, Lcom/oplus/camera/ui/preview/a/j;->al:Landroid/graphics/Bitmap;

    sget v8, Lcom/oplus/camera/ui/preview/a/j;->ab:F

    add-float/2addr v8, v9

    div-float/2addr v8, v10

    sget v9, Lcom/oplus/camera/ui/preview/a/j;->ag:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    const/4 v9, 0x0

    invoke-virtual {v1, v7, v8, v6, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2317
    :cond_3
    sget v7, Lcom/oplus/camera/ui/preview/a/j;->ae:I

    int-to-float v8, v7

    add-float/2addr v4, v8

    int-to-float v7, v7

    add-float/2addr v6, v7

    goto :goto_2

    .line 2321
    :cond_4
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->n()Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    if-eqz v1, :cond_5

    .line 2322
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 2323
    invoke-virtual {v10, v3, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 2324
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/4 v11, 0x1

    invoke-static/range {v5 .. v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    :cond_5
    move-object v6, v5

    const/16 v1, 0x5a

    if-ne v1, v0, :cond_6

    .line 2328
    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    .line 2329
    invoke-virtual {v11, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 2330
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    const/4 v12, 0x1

    invoke-static/range {v6 .. v12}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    :cond_6
    move-object v7, v6

    const/16 v1, 0x10e

    if-ne v1, v0, :cond_7

    .line 2333
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->m()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2334
    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    .line 2335
    invoke-virtual {v12, v3, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 2336
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    const/4 v13, 0x1

    invoke-static/range {v7 .. v13}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    :cond_7
    return-object v7
.end method

.method private static a(IZZIIIF)Landroid/graphics/Rect;
    .locals 6

    .line 1526
    sget v0, Lcom/oplus/camera/ui/preview/a/j;->aa:I

    sub-int v0, p5, v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, p6, v2

    if-gez v2, :cond_0

    .line 1527
    sget v3, Lcom/oplus/camera/ui/preview/a/j;->aa:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    goto :goto_0

    .line 1528
    :cond_0
    sget v3, Lcom/oplus/camera/ui/preview/a/j;->aa:I

    int-to-float v3, v3

    mul-float/2addr v3, p6

    div-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1530
    :goto_0
    sget v4, Lcom/oplus/camera/ui/preview/a/j;->aD:I

    const/4 v5, 0x1

    if-ne v5, v4, :cond_6

    .line 1531
    sget p2, Lcom/oplus/camera/ui/preview/a/j;->aE:I

    if-nez p2, :cond_2

    .line 1532
    sget p2, Lcom/oplus/camera/ui/preview/a/j;->aa:I

    int-to-float p2, p2

    div-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    if-eqz p1, :cond_1

    .line 1535
    new-instance p1, Landroid/graphics/Rect;

    add-int/2addr p4, p3

    mul-int/2addr p0, p4

    add-int/2addr p0, p3

    add-int/2addr p0, p2

    sub-int p2, p0, v3

    add-int/2addr p0, v3

    sub-int/2addr p5, v0

    invoke-direct {p1, p2, v0, p0, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/16 :goto_5

    .line 1540
    :cond_1
    new-instance p1, Landroid/graphics/Rect;

    add-int/2addr p3, p4

    mul-int/2addr p0, p3

    add-int/2addr p0, p4

    sub-int/2addr p0, p2

    sub-int p2, p0, v3

    add-int/2addr p0, v3

    sub-int/2addr p5, v0

    invoke-direct {p1, p2, v0, p0, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/16 :goto_5

    :cond_2
    if-eqz p1, :cond_4

    if-gez v2, :cond_3

    .line 1547
    sget p1, Lcom/oplus/camera/ui/preview/a/j;->aa:I

    goto :goto_1

    :cond_3
    sget p1, Lcom/oplus/camera/ui/preview/a/j;->aa:I

    int-to-float p1, p1

    mul-float/2addr p1, p6

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    :goto_1
    sub-int p1, p4, p1

    .line 1549
    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p4, p1

    add-int/2addr p3, p5

    mul-int/2addr p0, p3

    add-int/2addr p0, p5

    .line 1551
    sget p2, Lcom/oplus/camera/ui/preview/a/j;->aa:I

    sub-int/2addr p0, p2

    add-int/2addr p2, p0

    .line 1553
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3, p1, p0, p4, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_3

    :cond_4
    if-gez v2, :cond_5

    .line 1555
    sget p1, Lcom/oplus/camera/ui/preview/a/j;->aa:I

    goto :goto_2

    :cond_5
    sget p1, Lcom/oplus/camera/ui/preview/a/j;->aa:I

    int-to-float p1, p1

    mul-float/2addr p1, p6

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    :goto_2
    sub-int p1, p4, p1

    .line 1557
    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p4, p1

    add-int/2addr p5, p3

    mul-int/2addr p0, p5

    add-int/2addr p0, p3

    .line 1560
    sget p2, Lcom/oplus/camera/ui/preview/a/j;->aa:I

    add-int/2addr p2, p0

    .line 1561
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3, p1, p0, p4, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_3
    move-object p1, p3

    goto/16 :goto_5

    .line 1565
    :cond_6
    sget p6, Lcom/oplus/camera/ui/preview/a/j;->aE:I

    if-nez p6, :cond_9

    .line 1566
    sget p2, Lcom/oplus/camera/ui/preview/a/j;->aa:I

    int-to-float p2, p2

    div-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    add-int/2addr p2, v0

    add-int/lit8 p6, p0, 0x1

    add-int/2addr p5, p3

    mul-int/2addr p6, p5

    sub-int/2addr p6, v0

    if-eqz p1, :cond_7

    .line 1570
    new-instance p1, Landroid/graphics/Rect;

    sub-int p4, p2, v3

    mul-int/2addr p0, p5

    add-int/2addr p0, p3

    add-int/2addr p0, v0

    add-int/2addr p2, v3

    invoke-direct {p1, p4, p0, p2, p6}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_5

    .line 1574
    :cond_7
    sget-boolean p1, Lcom/oplus/camera/ui/preview/a/j;->aF:Z

    if-eqz p1, :cond_8

    .line 1575
    new-instance p1, Landroid/graphics/Rect;

    sub-int/2addr p4, p2

    sub-int p2, p4, v3

    mul-int/2addr p0, p5

    add-int/2addr p0, v0

    add-int/2addr p4, v3

    sub-int/2addr p6, p3

    invoke-direct {p1, p2, p0, p4, p6}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_5

    .line 1579
    :cond_8
    new-instance p1, Landroid/graphics/Rect;

    sub-int/2addr p4, p2

    sub-int p2, p4, v3

    mul-int/2addr p0, p5

    add-int/2addr p0, v0

    add-int/2addr p0, p3

    add-int/2addr p4, v3

    invoke-direct {p1, p2, p0, p4, p6}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_5

    :cond_9
    const/16 p1, 0x5a

    if-ne p1, p6, :cond_b

    .line 1585
    sget p1, Lcom/oplus/camera/ui/preview/a/j;->aa:I

    int-to-float p1, p1

    div-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    sget p6, Lcom/oplus/camera/ui/preview/a/j;->ah:I

    add-int/2addr p1, p6

    add-int/2addr p4, p3

    mul-int/2addr p4, p0

    add-int/2addr p4, p1

    sub-int p0, p4, v3

    add-int/2addr p4, v3

    sub-int/2addr p5, p6

    .line 1589
    sget p1, Lcom/oplus/camera/ui/preview/a/j;->aa:I

    sub-int/2addr p5, p1

    add-int/2addr p1, p5

    if-eqz p2, :cond_a

    add-int/2addr p0, p3

    add-int/2addr p4, p3

    .line 1597
    :cond_a
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, p0, p5, p4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_4

    .line 1599
    :cond_b
    sget p1, Lcom/oplus/camera/ui/preview/a/j;->aa:I

    int-to-float p1, p1

    div-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/2addr p1, p3

    sget p5, Lcom/oplus/camera/ui/preview/a/j;->ah:I

    add-int/2addr p1, p5

    add-int/2addr p4, p3

    mul-int/2addr p4, p0

    add-int/2addr p4, p1

    sub-int p0, p4, v3

    add-int/2addr p4, v3

    .line 1604
    sget p1, Lcom/oplus/camera/ui/preview/a/j;->aa:I

    add-int/2addr p1, p5

    if-eqz p2, :cond_c

    sub-int/2addr p0, p3

    sub-int/2addr p4, p3

    .line 1611
    :cond_c
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, p0, p5, p4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_4
    move-object p1, p2

    :goto_5
    return-object p1
.end method

.method public static a(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 757
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->r:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 758
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getGrandTourFilterListForCity, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not in grand tour cities list"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FilterHelper"

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 763
    :cond_0
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->r:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    return-object p0
.end method

.method public static a(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 831
    new-instance v0, Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 832
    sget-object p0, Lcom/oplus/camera/ui/preview/a/-$$Lambda$j$weIxL3OlhF4ShLQDmQgbnNgXpkA;->INSTANCE:Lcom/oplus/camera/ui/preview/a/-$$Lambda$j$weIxL3OlhF4ShLQDmQgbnNgXpkA;

    invoke-interface {v0, p0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 833
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 835
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 836
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static a()V
    .locals 8

    const-string v0, "com.oplus.director.filter.support"

    .line 503
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.oplus.director.filter.rus"

    .line 504
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    invoke-static {}, Lcom/oplus/camera/l/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->e:Lcom/oplus/camera/ui/preview/a/i;

    iget-object v0, v0, Lcom/oplus/camera/ui/preview/a/i;->b:Ljava/util/List;

    const-string v1, "drjw1994.bin"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 507
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->e:Lcom/oplus/camera/ui/preview/a/i;

    const v2, 0x7f100174

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v1, v3}, Lcom/oplus/camera/ui/preview/a/i;->a(ILjava/lang/String;Ljava/lang/Integer;)V

    .line 508
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->e:Lcom/oplus/camera/ui/preview/a/i;

    const v3, 0x7f100175

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "drjw2010.bin"

    const/4 v7, 0x2

    invoke-virtual {v0, v7, v6, v5}, Lcom/oplus/camera/ui/preview/a/i;->a(ILjava/lang/String;Ljava/lang/Integer;)V

    .line 509
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->j:Lcom/oplus/camera/ui/preview/a/i;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/oplus/camera/ui/preview/a/i;->a(ILjava/lang/String;Ljava/lang/Integer;)V

    .line 510
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->j:Lcom/oplus/camera/ui/preview/a/i;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v7, v6, v1}, Lcom/oplus/camera/ui/preview/a/i;->a(ILjava/lang/String;Ljava/lang/Integer;)V

    .line 511
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->O()V

    :cond_0
    return-void
.end method

.method public static a(II)V
    .locals 0

    .line 1004
    sput p0, Lcom/oplus/camera/ui/preview/a/j;->aD:I

    .line 1005
    sput p1, Lcom/oplus/camera/ui/preview/a/j;->aE:I

    .line 1006
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->y()V

    return-void
.end method

.method private static a(Landroid/content/res/Resources;Lcom/oplus/camera/ui/menu/levelcontrol/i;Lco/polarr/renderer/entities/DrawingItem;ZILjava/lang/String;IIIZ)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p7

    move/from16 v6, p8

    .line 1867
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x2

    const/4 v11, 0x1

    const-string v12, "default"

    sparse-switch v7, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v7, "tree-green.cube.rgb.bin"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x4

    goto/16 :goto_1

    :sswitch_1
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0x8

    goto/16 :goto_1

    :sswitch_2
    const-string v7, "sky-blue.cube.rgb.bin"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x5

    goto/16 :goto_1

    :sswitch_3
    const-string v7, "red-red.cube.rgb.bin"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x3

    goto/16 :goto_1

    :sswitch_4
    const-string v7, "oplus_video_filter_portrait_retention"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v7, v11

    goto/16 :goto_1

    :sswitch_5
    const-string v7, "portrait_retention"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v7, v8

    goto :goto_1

    :sswitch_6
    const-string v7, "neon-2020.cube.rgb.bin"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x6

    goto :goto_1

    :sswitch_7
    const-string v7, "type_fuji_velvia"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0xb

    goto :goto_1

    :sswitch_8
    const-string v7, "type_fuji_provia"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0xa

    goto :goto_1

    :sswitch_9
    const-string v7, "portrait_streamer"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v7, v10

    goto :goto_1

    :sswitch_a
    const-string v7, "type_fuji_chrome"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0xd

    goto :goto_1

    :sswitch_b
    const-string v7, "type_fuji_astia"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0xc

    goto :goto_1

    :sswitch_c
    const-string v7, "type_fuji_acros"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0x9

    goto :goto_1

    :sswitch_d
    const-string v7, "oplus_video_filter_neon"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x7

    goto :goto_1

    :cond_0
    :goto_0
    move v7, v9

    :goto_1
    const v13, 0x7f08040b

    packed-switch v7, :pswitch_data_0

    .line 1978
    iput-object v4, v2, Lco/polarr/renderer/entities/DrawingItem;->filterId:Ljava/lang/String;

    if-eqz p3, :cond_10

    .line 1980
    invoke-static {p0, v13}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/camera/util/Util;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto/16 :goto_10

    .line 1970
    :pswitch_0
    iput-object v12, v2, Lco/polarr/renderer/entities/DrawingItem;->filterId:Ljava/lang/String;

    if-eqz p3, :cond_1

    const v7, 0x7f080405

    .line 1972
    invoke-static {p0, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {v7}, Lcom/oplus/camera/util/Util;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_2

    :cond_1
    const v7, 0x7f080405

    .line 1973
    invoke-static {p0, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1971
    :goto_2
    invoke-static {v7, v5, v6}, Lcom/oplus/camera/ui/preview/a/j;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, v2, Lco/polarr/renderer/entities/DrawingItem;->thumbBitmap:Landroid/graphics/Bitmap;

    .line 1974
    invoke-virtual {p1, v4, v3}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->a(Ljava/lang/String;I)V

    goto/16 :goto_12

    .line 1962
    :pswitch_1
    iput-object v12, v2, Lco/polarr/renderer/entities/DrawingItem;->filterId:Ljava/lang/String;

    if-eqz p3, :cond_2

    const v7, 0x7f080404

    .line 1964
    invoke-static {p0, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {v7}, Lcom/oplus/camera/util/Util;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_3

    :cond_2
    const v7, 0x7f080404

    .line 1965
    invoke-static {p0, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1963
    :goto_3
    invoke-static {v7, v5, v6}, Lcom/oplus/camera/ui/preview/a/j;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, v2, Lco/polarr/renderer/entities/DrawingItem;->thumbBitmap:Landroid/graphics/Bitmap;

    .line 1966
    invoke-virtual {p1, v4, v3}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->a(Ljava/lang/String;I)V

    goto/16 :goto_12

    .line 1954
    :pswitch_2
    iput-object v12, v2, Lco/polarr/renderer/entities/DrawingItem;->filterId:Ljava/lang/String;

    const v7, 0x7f080408

    if-eqz p3, :cond_3

    .line 1956
    invoke-static {p0, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {v7}, Lcom/oplus/camera/util/Util;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_4

    .line 1957
    :cond_3
    invoke-static {p0, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1955
    :goto_4
    invoke-static {v7, v5, v6}, Lcom/oplus/camera/ui/preview/a/j;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, v2, Lco/polarr/renderer/entities/DrawingItem;->thumbBitmap:Landroid/graphics/Bitmap;

    .line 1958
    invoke-virtual {p1, v4, v3}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->a(Ljava/lang/String;I)V

    goto/16 :goto_12

    .line 1946
    :pswitch_3
    iput-object v12, v2, Lco/polarr/renderer/entities/DrawingItem;->filterId:Ljava/lang/String;

    const v7, 0x7f080407

    if-eqz p3, :cond_4

    .line 1948
    invoke-static {p0, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {v7}, Lcom/oplus/camera/util/Util;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_5

    .line 1949
    :cond_4
    invoke-static {p0, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1947
    :goto_5
    invoke-static {v7, v5, v6}, Lcom/oplus/camera/ui/preview/a/j;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, v2, Lco/polarr/renderer/entities/DrawingItem;->thumbBitmap:Landroid/graphics/Bitmap;

    .line 1950
    invoke-virtual {p1, v4, v3}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->a(Ljava/lang/String;I)V

    goto/16 :goto_12

    .line 1938
    :pswitch_4
    iput-object v12, v2, Lco/polarr/renderer/entities/DrawingItem;->filterId:Ljava/lang/String;

    const v7, 0x7f080403

    if-eqz p3, :cond_5

    .line 1940
    invoke-static {p0, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {v7}, Lcom/oplus/camera/util/Util;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_6

    .line 1941
    :cond_5
    invoke-static {p0, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1939
    :goto_6
    invoke-static {v7, v5, v6}, Lcom/oplus/camera/ui/preview/a/j;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, v2, Lco/polarr/renderer/entities/DrawingItem;->thumbBitmap:Landroid/graphics/Bitmap;

    .line 1942
    invoke-virtual {p1, v4, v3}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->a(Ljava/lang/String;I)V

    goto/16 :goto_12

    :pswitch_5
    move/from16 v7, p6

    if-ne v11, v7, :cond_7

    .line 1922
    iput-object v12, v2, Lco/polarr/renderer/entities/DrawingItem;->filterId:Ljava/lang/String;

    if-eqz p3, :cond_6

    const v7, 0x7f080406

    .line 1924
    invoke-static {p0, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {v7}, Lcom/oplus/camera/util/Util;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_7

    :cond_6
    const v7, 0x7f080406

    .line 1925
    invoke-static {p0, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1923
    :goto_7
    invoke-static {v7, v5, v6}, Lcom/oplus/camera/ui/preview/a/j;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, v2, Lco/polarr/renderer/entities/DrawingItem;->thumbBitmap:Landroid/graphics/Bitmap;

    .line 1926
    invoke-virtual {p1, v4, v3}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->a(Ljava/lang/String;I)V

    goto/16 :goto_12

    .line 1928
    :cond_7
    iput-object v4, v2, Lco/polarr/renderer/entities/DrawingItem;->filterId:Ljava/lang/String;

    if-eqz p3, :cond_8

    .line 1930
    invoke-static {p0, v13}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/camera/util/Util;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_8

    .line 1931
    :cond_8
    invoke-static {p0, v13}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_8
    if-eqz p9, :cond_9

    .line 1932
    invoke-static {v1, v5, v6}, Lcom/oplus/camera/ui/preview/a/j;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_9

    :cond_9
    const/4 v1, 0x0

    :goto_9
    iput-object v1, v2, Lco/polarr/renderer/entities/DrawingItem;->thumbBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_12

    .line 1913
    :pswitch_6
    iput-object v12, v2, Lco/polarr/renderer/entities/DrawingItem;->filterId:Ljava/lang/String;

    const v7, 0x7f08040c

    if-eqz p3, :cond_a

    .line 1915
    invoke-static {p0, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {v7}, Lcom/oplus/camera/util/Util;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_a

    .line 1916
    :cond_a
    invoke-static {p0, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1914
    :goto_a
    invoke-static {v7, v5, v6}, Lcom/oplus/camera/ui/preview/a/j;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, v2, Lco/polarr/renderer/entities/DrawingItem;->thumbBitmap:Landroid/graphics/Bitmap;

    .line 1917
    invoke-virtual {p1, v4, v3}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->a(Ljava/lang/String;I)V

    goto/16 :goto_12

    .line 1903
    :pswitch_7
    iput-object v12, v2, Lco/polarr/renderer/entities/DrawingItem;->filterId:Ljava/lang/String;

    const v7, 0x7f0804a2

    if-eqz p3, :cond_b

    .line 1905
    invoke-static {p0, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {v7}, Lcom/oplus/camera/util/Util;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_b

    .line 1906
    :cond_b
    invoke-static {p0, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1904
    :goto_b
    invoke-static {v7, v5, v6}, Lcom/oplus/camera/ui/preview/a/j;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, v2, Lco/polarr/renderer/entities/DrawingItem;->thumbBitmap:Landroid/graphics/Bitmap;

    .line 1907
    invoke-virtual {p1, v4, v3}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->a(Ljava/lang/String;I)V

    goto/16 :goto_12

    .line 1895
    :pswitch_8
    iput-object v12, v2, Lco/polarr/renderer/entities/DrawingItem;->filterId:Ljava/lang/String;

    const v7, 0x7f0804a3

    if-eqz p3, :cond_c

    .line 1897
    invoke-static {p0, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {v7}, Lcom/oplus/camera/util/Util;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_c

    .line 1898
    :cond_c
    invoke-static {p0, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1896
    :goto_c
    invoke-static {v7, v5, v6}, Lcom/oplus/camera/ui/preview/a/j;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, v2, Lco/polarr/renderer/entities/DrawingItem;->thumbBitmap:Landroid/graphics/Bitmap;

    .line 1899
    invoke-virtual {p1, v4, v3}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->a(Ljava/lang/String;I)V

    goto :goto_12

    .line 1887
    :pswitch_9
    iput-object v12, v2, Lco/polarr/renderer/entities/DrawingItem;->filterId:Ljava/lang/String;

    const v7, 0x7f0804a4

    if-eqz p3, :cond_d

    .line 1889
    invoke-static {p0, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {v7}, Lcom/oplus/camera/util/Util;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_d

    .line 1890
    :cond_d
    invoke-static {p0, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1888
    :goto_d
    invoke-static {v7, v5, v6}, Lcom/oplus/camera/ui/preview/a/j;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, v2, Lco/polarr/renderer/entities/DrawingItem;->thumbBitmap:Landroid/graphics/Bitmap;

    .line 1891
    invoke-virtual {p1, v4, v3}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->a(Ljava/lang/String;I)V

    goto :goto_12

    .line 1879
    :pswitch_a
    iput-object v12, v2, Lco/polarr/renderer/entities/DrawingItem;->filterId:Ljava/lang/String;

    const v7, 0x7f0804b2

    if-eqz p3, :cond_e

    .line 1881
    invoke-static {p0, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {v7}, Lcom/oplus/camera/util/Util;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_e

    .line 1882
    :cond_e
    invoke-static {p0, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1880
    :goto_e
    invoke-static {v7, v5, v6}, Lcom/oplus/camera/ui/preview/a/j;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, v2, Lco/polarr/renderer/entities/DrawingItem;->thumbBitmap:Landroid/graphics/Bitmap;

    .line 1883
    invoke-virtual {p1, v4, v3}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->a(Ljava/lang/String;I)V

    goto :goto_12

    .line 1871
    :pswitch_b
    iput-object v12, v2, Lco/polarr/renderer/entities/DrawingItem;->filterId:Ljava/lang/String;

    const v7, 0x7f08040e

    if-eqz p3, :cond_f

    .line 1873
    invoke-static {p0, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {v7}, Lcom/oplus/camera/util/Util;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_f

    .line 1874
    :cond_f
    invoke-static {p0, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1872
    :goto_f
    invoke-static {v7, v5, v6}, Lcom/oplus/camera/ui/preview/a/j;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, v2, Lco/polarr/renderer/entities/DrawingItem;->thumbBitmap:Landroid/graphics/Bitmap;

    .line 1875
    invoke-virtual {p1, v4, v3}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->a(Ljava/lang/String;I)V

    goto :goto_12

    .line 1981
    :cond_10
    invoke-static {p0, v13}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_10
    if-eqz p9, :cond_11

    .line 1982
    invoke-static {v1, v5, v6}, Lcom/oplus/camera/ui/preview/a/j;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_11

    :cond_11
    const/4 v1, 0x0

    :goto_11
    iput-object v1, v2, Lco/polarr/renderer/entities/DrawingItem;->thumbBitmap:Landroid/graphics/Bitmap;

    .line 1988
    :goto_12
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v3, -0x180df4a9

    if-eq v1, v3, :cond_14

    const v3, -0xfca32a8

    if-eq v1, v3, :cond_13

    const v3, 0x160cabd6

    if-eq v1, v3, :cond_12

    goto :goto_13

    :cond_12
    const-string v1, "Serenity.cube.rgb.bin"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    move v8, v11

    goto :goto_14

    :cond_13
    const-string v1, "Radiance.cube.rgb.bin"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_14

    :cond_14
    const-string v1, "Emerald.cube.rgb.bin"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    move v8, v10

    goto :goto_14

    :cond_15
    :goto_13
    move v8, v9

    :goto_14
    if-eqz v8, :cond_16

    if-eq v8, v11, :cond_16

    if-eq v8, v10, :cond_16

    goto :goto_17

    .line 1992
    :cond_16
    invoke-static {}, Lcom/oplus/camera/util/Util;->aq()Z

    move-result v1

    if-eqz v1, :cond_17

    const v1, 0x7f080504

    goto :goto_15

    :cond_17
    const v1, 0x7f080505

    :goto_15
    if-eqz p3, :cond_18

    .line 1996
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_16

    .line 1997
    :cond_18
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1998
    :goto_16
    invoke-static {v0, v5, v6}, Lcom/oplus/camera/ui/preview/a/j;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v2, Lco/polarr/renderer/entities/DrawingItem;->overlayBitmap:Landroid/graphics/Bitmap;

    :goto_17
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ccd13bd -> :sswitch_d
        -0x6da16c98 -> :sswitch_c
        -0x6d9a1ff2 -> :sswitch_b
        -0x42dbfffa -> :sswitch_a
        -0x37592faf -> :sswitch_9
        -0x2c215833 -> :sswitch_8
        -0x229cd323 -> :sswitch_7
        -0x1816d0d8 -> :sswitch_6
        0xc440f7a -> :sswitch_5
        0x261c2f27 -> :sswitch_4
        0x3566c7a6 -> :sswitch_3
        0x47fc7315 -> :sswitch_2
        0x5c13d641 -> :sswitch_1
        0x5d090347 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Landroid/content/res/Resources;Lcom/oplus/camera/ui/menu/levelcontrol/i;Ljava/util/List;IZZIIIF)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lcom/oplus/camera/ui/menu/levelcontrol/i;",
            "Ljava/util/List<",
            "Lcom/oplus/camera/ui/preview/a/k;",
            ">;IZZIIIF)V"
        }
    .end annotation

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move/from16 v12, p4

    move/from16 v13, p5

    move/from16 v14, p8

    .line 1444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generateDrawingItemsHorizontal, isFrontCam: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", needRotate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FilterHelper"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1446
    new-instance v15, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v15}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 1447
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v9

    .line 1449
    invoke-static/range {p2 .. p2}, Lcom/oplus/camera/ui/preview/a/j;->a(Ljava/util/List;)Z

    move-result v8

    .line 1450
    invoke-virtual {v10, v8}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->a(Z)V

    const/16 v16, 0x0

    const/16 v17, 0x1

    if-eqz v12, :cond_0

    const/4 v0, 0x4

    .line 1451
    sget v1, Lcom/oplus/camera/ui/preview/a/j;->aD:I

    if-ne v0, v1, :cond_0

    move/from16 v18, v17

    goto :goto_0

    :cond_0
    move/from16 v18, v16

    :goto_0
    const/16 v7, 0x5a

    if-nez v13, :cond_2

    .line 1453
    sget v0, Lcom/oplus/camera/ui/preview/a/j;->aE:I

    if-ne v7, v0, :cond_1

    goto :goto_2

    :cond_1
    move/from16 v7, v16

    :goto_1
    if-ge v7, v9, :cond_9

    .line 1471
    new-instance v6, Lco/polarr/renderer/entities/DrawingItem;

    invoke-direct {v6}, Lco/polarr/renderer/entities/DrawingItem;-><init>()V

    move v0, v7

    move/from16 v1, p5

    move/from16 v2, p4

    move/from16 v3, p6

    move/from16 v4, p7

    move/from16 v5, p8

    move-object v12, v6

    move/from16 v6, p9

    .line 1472
    invoke-static/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/j;->a(IZZIIIF)Landroid/graphics/Rect;

    move-result-object v0

    .line 1473
    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/preview/a/k;

    .line 1474
    iput-object v0, v12, Lco/polarr/renderer/entities/DrawingItem;->rect:Landroid/graphics/Rect;

    .line 1475
    iget-object v5, v1, Lcom/oplus/camera/ui/preview/a/k;->a:Ljava/lang/String;

    int-to-float v0, v14

    mul-float v0, v0, p9

    .line 1476
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    move/from16 v3, p4

    move v4, v7

    move/from16 v6, p3

    move/from16 v17, v7

    move/from16 v7, v16

    move/from16 v19, v8

    move/from16 v8, p8

    move/from16 v20, v9

    move/from16 v9, v19

    .line 1475
    invoke-static/range {v0 .. v9}, Lcom/oplus/camera/ui/preview/a/j;->a(Landroid/content/res/Resources;Lcom/oplus/camera/ui/menu/levelcontrol/i;Lco/polarr/renderer/entities/DrawingItem;ZILjava/lang/String;IIIZ)V

    .line 1477
    invoke-interface {v15, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v17, 0x1

    move/from16 v12, p4

    move/from16 v8, v19

    move/from16 v9, v20

    goto :goto_1

    :cond_2
    :goto_2
    move/from16 v19, v8

    move/from16 v20, v9

    add-int/lit8 v9, v20, -0x1

    move v12, v9

    :goto_3
    if-ltz v12, :cond_9

    .line 1455
    sget v0, Lcom/oplus/camera/ui/preview/a/j;->aE:I

    if-ne v7, v0, :cond_3

    if-eqz v18, :cond_5

    :cond_3
    const/16 v0, 0x10e

    sget v1, Lcom/oplus/camera/ui/preview/a/j;->aE:I

    if-ne v0, v1, :cond_4

    if-nez v18, :cond_5

    .line 1457
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->o()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    sub-int v9, v20, v12

    add-int/lit8 v9, v9, -0x1

    move v0, v9

    goto :goto_4

    :cond_6
    move v0, v12

    .line 1459
    :goto_4
    new-instance v9, Lco/polarr/renderer/entities/DrawingItem;

    invoke-direct {v9}, Lco/polarr/renderer/entities/DrawingItem;-><init>()V

    if-nez v13, :cond_8

    .line 1460
    sget v1, Lcom/oplus/camera/ui/preview/a/j;->aE:I

    if-ne v7, v1, :cond_7

    goto :goto_5

    :cond_7
    move/from16 v1, v16

    goto :goto_6

    :cond_8
    :goto_5
    move/from16 v1, v17

    :goto_6
    move/from16 v2, p4

    move/from16 v3, p6

    move/from16 v4, p7

    move/from16 v5, p8

    move/from16 v6, p9

    .line 1461
    invoke-static/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/j;->a(IZZIIIF)Landroid/graphics/Rect;

    move-result-object v0

    .line 1462
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/preview/a/k;

    .line 1463
    iput-object v0, v9, Lco/polarr/renderer/entities/DrawingItem;->rect:Landroid/graphics/Rect;

    .line 1464
    iget-object v5, v1, Lcom/oplus/camera/ui/preview/a/k;->a:Ljava/lang/String;

    int-to-float v0, v14

    mul-float v0, v0, p9

    .line 1465
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v9

    move/from16 v3, p4

    move v4, v12

    move/from16 v6, p3

    move/from16 v21, v7

    move v7, v8

    move/from16 v8, p8

    move-object v11, v9

    move/from16 v9, v19

    .line 1464
    invoke-static/range {v0 .. v9}, Lcom/oplus/camera/ui/preview/a/j;->a(Landroid/content/res/Resources;Lcom/oplus/camera/ui/menu/levelcontrol/i;Lco/polarr/renderer/entities/DrawingItem;ZILjava/lang/String;IIIZ)V

    .line 1466
    invoke-interface {v15, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v11, p2

    move/from16 v7, v21

    goto :goto_3

    .line 1481
    :cond_9
    invoke-virtual {v10, v15}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->a(Ljava/util/List;)V

    .line 1482
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->a(I)V

    return-void
.end method

.method public static a(Landroid/content/res/Resources;Ljava/lang/String;IIZZLjava/util/List;Lcom/oplus/camera/ui/preview/a/p;F)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/lang/String;",
            "IIZZ",
            "Ljava/util/List<",
            "Lcom/oplus/camera/ui/preview/a/k;",
            ">;",
            "Lcom/oplus/camera/ui/preview/a/p;",
            "F)V"
        }
    .end annotation

    move-object v0, p0

    const-string v1, "FilterHelper"

    const-string v2, "setImageResourceVertical"

    .line 1183
    invoke-static {v1, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    sget v1, Lcom/oplus/camera/ui/preview/a/j;->aa:I

    if-nez v1, :cond_0

    const v1, 0x7f070c92

    .line 1186
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->aa:I

    :cond_0
    const v1, 0x7f070c94

    .line 1189
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->ab:F

    const v1, 0x7f070c96

    .line 1190
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->W:F

    const v1, 0x7f070c93

    .line 1191
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->X:F

    .line 1193
    sget v1, Lcom/oplus/camera/ui/preview/a/j;->Y:F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_1

    const v1, 0x7f070c95

    .line 1194
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->Y:F

    .line 1197
    :cond_1
    sget v1, Lcom/oplus/camera/ui/preview/a/j;->aw:I

    if-nez v1, :cond_2

    const v1, 0x7f070c91

    .line 1198
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->aw:I

    .line 1201
    :cond_2
    sget v1, Lcom/oplus/camera/ui/preview/a/j;->ax:I

    if-nez v1, :cond_3

    const v1, 0x7f070c9d

    .line 1202
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->ax:I

    .line 1205
    :cond_3
    sget v1, Lcom/oplus/camera/ui/preview/a/j;->ay:I

    if-nez v1, :cond_4

    const v1, 0x7f07074e

    .line 1206
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->ay:I

    .line 1209
    :cond_4
    sget v1, Lcom/oplus/camera/ui/preview/a/j;->ac:I

    if-nez v1, :cond_5

    const v1, 0x7f070c9e

    .line 1210
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->ac:I

    .line 1213
    :cond_5
    sget v1, Lcom/oplus/camera/ui/preview/a/j;->ay:I

    if-nez v1, :cond_6

    const v1, 0x7f070c9f

    .line 1214
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->ay:I

    .line 1217
    :cond_6
    sget v1, Lcom/oplus/camera/ui/preview/a/j;->az:I

    if-nez v1, :cond_7

    const v1, 0x7f070c9a

    .line 1218
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->az:I

    .line 1221
    :cond_7
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->aj:Landroid/graphics/Bitmap;

    if-nez v1, :cond_8

    const v1, 0x7f08040a

    .line 1222
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/oplus/camera/ui/preview/a/j;->aj:Landroid/graphics/Bitmap;

    .line 1225
    :cond_8
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->ak:Landroid/graphics/Bitmap;

    if-nez v1, :cond_9

    const v1, 0x7f080410

    .line 1226
    invoke-static {p0, v1}, Lcom/oplus/camera/ui/preview/a/j;->a(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/oplus/camera/ui/preview/a/j;->ak:Landroid/graphics/Bitmap;

    .line 1229
    :cond_9
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->al:Landroid/graphics/Bitmap;

    if-nez v1, :cond_a

    const v1, 0x7f08040d

    .line 1230
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/oplus/camera/ui/preview/a/j;->al:Landroid/graphics/Bitmap;

    :cond_a
    const v1, 0x7f070747

    .line 1233
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->ad:I

    const v1, 0x7f07074a

    .line 1234
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->ag:I

    const v1, 0x7f07074f

    .line 1235
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->ae:I

    const v1, 0x7f070749

    .line 1236
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->af:I

    .line 1238
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->an:Landroid/text/TextPaint;

    const/4 v3, 0x1

    if-nez v1, :cond_b

    .line 1239
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/oplus/camera/ui/preview/a/j;->an:Landroid/text/TextPaint;

    const v1, 0x7f0600a2

    .line 1240
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->ao:I

    const v1, 0x7f060072

    .line 1241
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->ap:I

    const v1, 0x7f06006a

    .line 1242
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->aq:I

    const v1, 0x7f060065

    .line 1243
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->ar:I

    .line 1244
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->an:Landroid/text/TextPaint;

    sget v4, Lcom/oplus/camera/ui/preview/a/j;->ao:I

    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 1245
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->an:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 1246
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->an:Landroid/text/TextPaint;

    sget v4, Lcom/oplus/camera/ui/preview/a/j;->as:I

    int-to-float v4, v4

    sget v5, Lcom/oplus/camera/ui/preview/a/j;->aq:I

    invoke-virtual {v1, v4, v2, v2, v5}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 1247
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->an:Landroid/text/TextPaint;

    const v4, 0x7f07074d

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1250
    :cond_b
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->au:Landroid/graphics/Paint$FontMetricsInt;

    if-nez v1, :cond_c

    .line 1251
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->an:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    sput-object v1, Lcom/oplus/camera/ui/preview/a/j;->au:Landroid/graphics/Paint$FontMetricsInt;

    .line 1254
    :cond_c
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->au:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sget-object v4, Lcom/oplus/camera/ui/preview/a/j;->au:Landroid/graphics/Paint$FontMetricsInt;

    iget v4, v4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v1, v4

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->aA:I

    .line 1255
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->au:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->aB:I

    .line 1257
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->an:Landroid/text/TextPaint;

    invoke-static {v3}, Lcom/oplus/camera/util/Util;->c(Z)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1258
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->an:Landroid/text/TextPaint;

    const/4 v4, 0x0

    const/4 v5, 0x3

    sget-object v6, Lcom/oplus/camera/ui/preview/a/j;->at:Landroid/graphics/Rect;

    const-string v7, "..."

    invoke-virtual {v1, v7, v4, v5, v6}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1259
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->at:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->aC:I

    .line 1261
    sget v1, Lcom/oplus/camera/ui/preview/a/j;->W:F

    sget v4, Lcom/oplus/camera/ui/preview/a/j;->ax:I

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v1, v4

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->av:F

    .line 1263
    sget v1, Lcom/oplus/camera/ui/preview/a/j;->aa:I

    int-to-float v4, v1

    mul-float v4, v4, p8

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, p8, v5

    if-lez v5, :cond_d

    int-to-float v1, v1

    sub-float v1, v4, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-double v1, v1

    .line 1267
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    float-to-double v4, v4

    div-double/2addr v1, v4

    double-to-float v2, v1

    .line 1270
    :cond_d
    new-instance v10, Lcom/oplus/camera/ui/menu/levelcontrol/i;

    move-object v1, p1

    invoke-direct {v10, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1271
    invoke-virtual {v10, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->c(Ljava/util/List;)V

    move-object/from16 v4, p6

    .line 1272
    invoke-virtual {v10, v4}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->b(Ljava/util/List;)V

    .line 1273
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->aj:Landroid/graphics/Bitmap;

    invoke-virtual {v10, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->a(Landroid/graphics/Bitmap;)V

    .line 1274
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->ak:Landroid/graphics/Bitmap;

    invoke-virtual {v10, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->b(Landroid/graphics/Bitmap;)V

    move v1, p2

    .line 1275
    invoke-virtual {v10, p2}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->f(I)V

    const/high16 v1, 0x42700000    # 60.0f

    .line 1276
    invoke-virtual {v10, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->a(F)V

    .line 1277
    sget v1, Lcom/oplus/camera/ui/preview/a/j;->ab:F

    invoke-virtual {v10, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->b(F)V

    .line 1278
    sget v1, Lcom/oplus/camera/ui/preview/a/j;->W:F

    invoke-virtual {v10, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->c(F)V

    .line 1279
    sget v1, Lcom/oplus/camera/ui/preview/a/j;->X:F

    invoke-virtual {v10, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->d(F)V

    .line 1280
    sget v1, Lcom/oplus/camera/ui/preview/a/j;->Y:F

    invoke-virtual {v10, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->e(F)V

    .line 1281
    invoke-virtual {v10, v2}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->f(F)V

    move v5, p4

    .line 1282
    invoke-virtual {v10, p4}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->b(Z)V

    move/from16 v6, p5

    .line 1283
    invoke-virtual {v10, v6}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->c(Z)V

    .line 1284
    invoke-virtual {v10, v3}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->e(Z)V

    .line 1286
    sget v1, Lcom/oplus/camera/ui/preview/a/j;->X:F

    float-to-int v7, v1

    sget v1, Lcom/oplus/camera/ui/preview/a/j;->ab:F

    float-to-int v8, v1

    sget v1, Lcom/oplus/camera/ui/preview/a/j;->W:F

    float-to-int v9, v1

    move-object v0, p0

    move-object v1, v10

    move-object/from16 v2, p6

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move v6, v7

    move v7, v8

    move v8, v9

    move/from16 v9, p8

    invoke-static/range {v0 .. v9}, Lcom/oplus/camera/ui/preview/a/j;->b(Landroid/content/res/Resources;Lcom/oplus/camera/ui/menu/levelcontrol/i;Ljava/util/List;IZZIIIF)V

    move-object/from16 v0, p7

    .line 1288
    invoke-interface {v0, v10}, Lcom/oplus/camera/ui/preview/a/p;->a(Lcom/oplus/camera/ui/menu/levelcontrol/i;)V

    return-void
.end method

.method public static a(Landroid/content/res/Resources;Ljava/lang/String;IIZZZLjava/util/List;Lcom/oplus/camera/ui/preview/a/p;FZ)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/lang/String;",
            "IIZZZ",
            "Ljava/util/List<",
            "Lcom/oplus/camera/ui/preview/a/k;",
            ">;",
            "Lcom/oplus/camera/ui/preview/a/p;",
            "FZ)V"
        }
    .end annotation

    move-object v0, p0

    const-string v1, "FilterHelper"

    const-string v2, "setImageResourceHorizontal"

    .line 1030
    invoke-static {v1, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    sput-boolean p10, Lcom/oplus/camera/ui/preview/a/j;->aF:Z

    .line 1034
    sget v1, Lcom/oplus/camera/ui/preview/a/j;->aE:I

    const v2, 0x7f07061d

    const v3, 0x7f07061e

    if-nez v1, :cond_0

    .line 1035
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->W:F

    .line 1036
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->ab:F

    const v1, 0x7f070625

    .line 1037
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->X:F

    goto :goto_0

    .line 1040
    :cond_0
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->ab:F

    .line 1041
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->W:F

    const v1, 0x7f070637

    .line 1042
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->X:F

    .line 1046
    :goto_0
    sget v1, Lcom/oplus/camera/ui/preview/a/j;->aa:I

    if-nez v1, :cond_1

    const v1, 0x7f07061f

    .line 1047
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->aa:I

    .line 1050
    :cond_1
    sget v1, Lcom/oplus/camera/ui/preview/a/j;->Y:F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_2

    const v1, 0x7f070627

    .line 1051
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->Y:F

    .line 1054
    :cond_2
    sget v1, Lcom/oplus/camera/ui/preview/a/j;->ac:I

    if-nez v1, :cond_3

    const v1, 0x7f070624

    .line 1055
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->ac:I

    .line 1058
    :cond_3
    sget v1, Lcom/oplus/camera/ui/preview/a/j;->ax:I

    if-nez v1, :cond_4

    const v1, 0x7f07074c

    .line 1059
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->ax:I

    .line 1062
    :cond_4
    sget v1, Lcom/oplus/camera/ui/preview/a/j;->ay:I

    if-nez v1, :cond_5

    const v1, 0x7f07074e

    .line 1063
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->ay:I

    .line 1066
    :cond_5
    sget v1, Lcom/oplus/camera/ui/preview/a/j;->az:I

    if-nez v1, :cond_6

    const v1, 0x7f070744

    .line 1067
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->az:I

    .line 1070
    :cond_6
    sget v1, Lcom/oplus/camera/ui/preview/a/j;->Z:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_7

    const v1, 0x7f070750

    .line 1071
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->Z:F

    .line 1074
    :cond_7
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->aj:Landroid/graphics/Bitmap;

    const v3, 0x7f08040f

    const/4 v4, 0x0

    if-nez v1, :cond_8

    .line 1075
    invoke-virtual {p0, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1076
    invoke-static {v1}, Lcom/oplus/camera/util/Util;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/oplus/camera/ui/preview/a/j;->aj:Landroid/graphics/Bitmap;

    .line 1079
    :cond_8
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->ak:Landroid/graphics/Bitmap;

    if-nez v1, :cond_a

    .line 1080
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1081
    invoke-static {p0, v3}, Lcom/oplus/camera/ui/preview/a/j;->a(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/oplus/camera/ui/preview/a/j;->ak:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_9
    const v1, 0x7f080410

    .line 1083
    invoke-static {p0, v1}, Lcom/oplus/camera/ui/preview/a/j;->a(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/oplus/camera/ui/preview/a/j;->ak:Landroid/graphics/Bitmap;

    .line 1087
    :cond_a
    :goto_1
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->al:Landroid/graphics/Bitmap;

    if-nez v1, :cond_b

    const v1, 0x7f08040d

    .line 1088
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/oplus/camera/ui/preview/a/j;->al:Landroid/graphics/Bitmap;

    .line 1091
    :cond_b
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->am:Landroid/graphics/Bitmap;

    if-nez v1, :cond_c

    const v1, 0x7f080409

    .line 1092
    invoke-virtual {p0, v1, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1093
    invoke-static {v1}, Lcom/oplus/camera/util/Util;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/oplus/camera/ui/preview/a/j;->am:Landroid/graphics/Bitmap;

    .line 1096
    :cond_c
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->an:Landroid/text/TextPaint;

    const/4 v3, 0x1

    if-nez v1, :cond_d

    .line 1097
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/oplus/camera/ui/preview/a/j;->an:Landroid/text/TextPaint;

    const v1, 0x7f0600a2

    .line 1098
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->ao:I

    const v1, 0x7f060072

    .line 1099
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->ap:I

    const v1, 0x7f06006a

    .line 1100
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->aq:I

    const v1, 0x7f060065

    .line 1101
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->ar:I

    const v1, 0x7f0700ec

    .line 1102
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->as:I

    .line 1103
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->an:Landroid/text/TextPaint;

    sget v5, Lcom/oplus/camera/ui/preview/a/j;->ao:I

    invoke-virtual {v1, v5}, Landroid/text/TextPaint;->setColor(I)V

    .line 1104
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->an:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 1105
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->an:Landroid/text/TextPaint;

    sget v5, Lcom/oplus/camera/ui/preview/a/j;->as:I

    int-to-float v5, v5

    sget v6, Lcom/oplus/camera/ui/preview/a/j;->aq:I

    invoke-virtual {v1, v5, v2, v2, v6}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 1106
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->an:Landroid/text/TextPaint;

    const v5, 0x7f07074d

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    :cond_d
    const v1, 0x7f070746

    .line 1109
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->ad:I

    const v1, 0x7f07074a

    .line 1110
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->ag:I

    const v1, 0x7f070748

    .line 1111
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->af:I

    const v1, 0x7f070740

    .line 1112
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->ah:I

    const v1, 0x7f070728

    .line 1113
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->ai:I

    .line 1115
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->au:Landroid/graphics/Paint$FontMetricsInt;

    if-nez v1, :cond_e

    .line 1116
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->an:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    sput-object v1, Lcom/oplus/camera/ui/preview/a/j;->au:Landroid/graphics/Paint$FontMetricsInt;

    .line 1119
    :cond_e
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->au:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sget-object v5, Lcom/oplus/camera/ui/preview/a/j;->au:Landroid/graphics/Paint$FontMetricsInt;

    iget v5, v5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v1, v5

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->aA:I

    .line 1120
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->au:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->aB:I

    .line 1122
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->an:Landroid/text/TextPaint;

    invoke-static {v3}, Lcom/oplus/camera/util/Util;->c(Z)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1123
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->an:Landroid/text/TextPaint;

    const/4 v5, 0x0

    const/4 v6, 0x3

    sget-object v7, Lcom/oplus/camera/ui/preview/a/j;->at:Landroid/graphics/Rect;

    const-string v8, "..."

    invoke-virtual {v1, v8, v5, v6, v7}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1124
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->at:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->aC:I

    .line 1126
    sget v1, Lcom/oplus/camera/ui/preview/a/j;->W:F

    sget v5, Lcom/oplus/camera/ui/preview/a/j;->ax:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v1, v5

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->av:F

    .line 1128
    sget v1, Lcom/oplus/camera/ui/preview/a/j;->aa:I

    int-to-float v5, v1

    mul-float v5, v5, p9

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, p9, v6

    if-lez v6, :cond_f

    int-to-float v1, v1

    sub-float v1, v5, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-double v1, v1

    .line 1132
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    float-to-double v5, v5

    div-double/2addr v1, v5

    double-to-float v2, v1

    .line 1135
    :cond_f
    new-instance v10, Lcom/oplus/camera/ui/menu/levelcontrol/i;

    move-object v1, p1

    invoke-direct {v10, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;-><init>(Ljava/lang/String;)V

    .line 1136
    invoke-virtual {v10, v4}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->c(Ljava/util/List;)V

    move-object/from16 v4, p7

    .line 1137
    invoke-virtual {v10, v4}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->b(Ljava/util/List;)V

    .line 1138
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->aj:Landroid/graphics/Bitmap;

    invoke-virtual {v10, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->a(Landroid/graphics/Bitmap;)V

    .line 1139
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->ak:Landroid/graphics/Bitmap;

    invoke-virtual {v10, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->b(Landroid/graphics/Bitmap;)V

    move v1, p2

    .line 1140
    invoke-virtual {v10, p2}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->f(I)V

    const/high16 v1, 0x42700000    # 60.0f

    .line 1141
    invoke-virtual {v10, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->a(F)V

    .line 1142
    sget v1, Lcom/oplus/camera/ui/preview/a/j;->ab:F

    invoke-virtual {v10, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->b(F)V

    .line 1143
    sget v1, Lcom/oplus/camera/ui/preview/a/j;->W:F

    invoke-virtual {v10, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->c(F)V

    .line 1144
    sget v1, Lcom/oplus/camera/ui/preview/a/j;->X:F

    invoke-virtual {v10, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->d(F)V

    .line 1145
    sget v1, Lcom/oplus/camera/ui/preview/a/j;->Y:F

    invoke-virtual {v10, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->e(F)V

    .line 1146
    invoke-virtual {v10, v2}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->f(F)V

    move v5, p4

    .line 1147
    invoke-virtual {v10, p4}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->b(Z)V

    move/from16 v6, p5

    .line 1148
    invoke-virtual {v10, v6}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->c(Z)V

    move/from16 v1, p6

    .line 1149
    invoke-virtual {v10, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->d(Z)V

    .line 1150
    invoke-virtual {v10, v3}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->e(Z)V

    .line 1151
    sget v1, Lcom/oplus/camera/ui/preview/a/j;->ah:I

    invoke-virtual {v10, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->g(I)V

    if-eqz p10, :cond_10

    .line 1154
    invoke-static/range {p7 .. p7}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 1157
    :cond_10
    sget v1, Lcom/oplus/camera/ui/preview/a/j;->X:F

    float-to-int v7, v1

    sget v1, Lcom/oplus/camera/ui/preview/a/j;->ab:F

    float-to-int v8, v1

    sget v1, Lcom/oplus/camera/ui/preview/a/j;->W:F

    float-to-int v9, v1

    move-object v0, p0

    move-object v1, v10

    move-object/from16 v2, p7

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move v6, v7

    move v7, v8

    move v8, v9

    move/from16 v9, p9

    invoke-static/range {v0 .. v9}, Lcom/oplus/camera/ui/preview/a/j;->a(Landroid/content/res/Resources;Lcom/oplus/camera/ui/menu/levelcontrol/i;Ljava/util/List;IZZIIIF)V

    move-object/from16 v0, p8

    .line 1159
    invoke-interface {v0, v10}, Lcom/oplus/camera/ui/preview/a/p;->a(Lcom/oplus/camera/ui/menu/levelcontrol/i;)V

    return-void
.end method

.method public static a(Landroid/content/res/Resources;Ljava/lang/String;IIZZZLjava/util/List;Lcom/oplus/camera/ui/preview/a/p;Landroid/util/Size;Z)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/lang/String;",
            "IIZZZ",
            "Ljava/util/List<",
            "Lcom/oplus/camera/ui/preview/a/k;",
            ">;",
            "Lcom/oplus/camera/ui/preview/a/p;",
            "Landroid/util/Size;",
            "Z)V"
        }
    .end annotation

    .line 1012
    invoke-virtual/range {p9 .. p9}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    invoke-virtual/range {p9 .. p9}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v11, v0, v1

    .line 1014
    sget v0, Lcom/oplus/camera/ui/preview/a/j;->aD:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_1

    .line 1015
    sget v0, Lcom/oplus/camera/ui/preview/a/j;->aE:I

    if-nez v0, :cond_0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move v10, v11

    .line 1016
    invoke-static/range {v2 .. v10}, Lcom/oplus/camera/ui/preview/a/j;->a(Landroid/content/res/Resources;Ljava/lang/String;IIZZLjava/util/List;Lcom/oplus/camera/ui/preview/a/p;F)V

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move v10, v11

    .line 1019
    invoke-static/range {v2 .. v10}, Lcom/oplus/camera/ui/preview/a/j;->b(Landroid/content/res/Resources;Ljava/lang/String;IIZZLjava/util/List;Lcom/oplus/camera/ui/preview/a/p;F)V

    goto :goto_0

    :cond_1
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v12, p10

    .line 1023
    invoke-static/range {v2 .. v12}, Lcom/oplus/camera/ui/preview/a/j;->a(Landroid/content/res/Resources;Ljava/lang/String;IIZZZLjava/util/List;Lcom/oplus/camera/ui/preview/a/p;FZ)V

    :goto_0
    return-void
.end method

.method public static a(Lco/polarr/renderer/entities/DrawingItem;Ljava/lang/String;Z)V
    .locals 1

    .line 1658
    iget-object p1, p0, Lco/polarr/renderer/entities/DrawingItem;->rect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 1659
    iput-object v0, p0, Lco/polarr/renderer/entities/DrawingItem;->overlayBitmap:Landroid/graphics/Bitmap;

    .line 1660
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lco/polarr/renderer/entities/DrawingItem;->overlayTop:I

    if-eqz p2, :cond_0

    .line 1663
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr p2, p1

    div-int/lit8 p2, p2, 0x2

    sget p1, Lcom/oplus/camera/ui/preview/a/j;->aw:I

    sub-int/2addr p2, p1

    iput p2, p0, Lco/polarr/renderer/entities/DrawingItem;->overlayLeft:I

    goto :goto_0

    .line 1665
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    sub-int/2addr p2, p1

    div-int/lit8 p2, p2, 0x2

    sget p1, Lcom/oplus/camera/ui/preview/a/j;->aw:I

    add-int/2addr p2, p1

    iput p2, p0, Lco/polarr/renderer/entities/DrawingItem;->overlayLeft:I

    :goto_0
    return-void
.end method

.method public static a(Lcom/oplus/camera/ui/menu/levelcontrol/i;II)V
    .locals 7

    if-nez p0, :cond_0

    return-void

    :cond_0
    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p1, v0

    int-to-float p2, p2

    div-float v6, p1, p2

    .line 1411
    sget p1, Lcom/oplus/camera/ui/preview/a/j;->W:F

    mul-float p2, p1, v6

    sub-float p1, p2, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    float-to-double v0, p1

    .line 1412
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    float-to-double p1, p2

    div-double/2addr v0, p1

    double-to-float p1, v0

    .line 1413
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->f(F)V

    .line 1414
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->n()Z

    move-result v1

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->m()Z

    move-result v2

    sget p0, Lcom/oplus/camera/ui/preview/a/j;->X:F

    float-to-int v3, p0

    sget p0, Lcom/oplus/camera/ui/preview/a/j;->ab:F

    float-to-int v4, p0

    sget p0, Lcom/oplus/camera/ui/preview/a/j;->W:F

    float-to-int v5, p0

    invoke-static/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/j;->a(Ljava/util/List;ZZIIIF)V

    return-void
.end method

.method private static a(Lcom/oplus/camera/ui/preview/a/i;)V
    .locals 5

    .line 679
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "rear_portrait_mono_1"

    .line 681
    invoke-static {v1}, Lcom/oplus/camera/e/a;->a(Ljava/lang/String;)I

    move-result v1

    .line 683
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initialPortraitMonoFilter,rear_portrait_mono_1 id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", sbHasMono1 is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/oplus/camera/ui/preview/a/j;->v:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FilterHelper"

    invoke-static {v3, v2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    sget-boolean v2, Lcom/oplus/camera/ui/preview/a/j;->v:Z

    const/4 v4, 0x1

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    .line 686
    sput-boolean v4, Lcom/oplus/camera/ui/preview/a/j;->v:Z

    .line 687
    sput v1, Lcom/oplus/camera/ui/preview/a/j;->R:I

    .line 688
    sput v0, Lcom/oplus/camera/ui/preview/a/j;->z:I

    .line 690
    invoke-static {}, Lcom/oplus/camera/util/Util;->ak()Z

    move-result v1

    const-string v2, "p4_1.cube.rgb.bin"

    if-eqz v1, :cond_0

    const-string v1, "initialPortraitMonoFilter,add camera protrait filter xiaoxiang"

    .line 691
    invoke-static {v3, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    sget v1, Lcom/oplus/camera/ui/preview/a/j;->z:I

    const v3, 0x7f1002f4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/oplus/camera/ui/preview/a/i;->c(ILjava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 695
    :cond_0
    sget v1, Lcom/oplus/camera/ui/preview/a/j;->z:I

    const v3, 0x7f1002e9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/oplus/camera/ui/preview/a/i;->c(ILjava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    :goto_0
    const-string v1, "rear_portrait_mono_2"

    .line 699
    invoke-static {v1}, Lcom/oplus/camera/e/a;->a(Ljava/lang/String;)I

    move-result v1

    .line 701
    sget-boolean v2, Lcom/oplus/camera/ui/preview/a/j;->w:Z

    if-nez v2, :cond_3

    if-eqz v1, :cond_3

    .line 702
    sput-boolean v4, Lcom/oplus/camera/ui/preview/a/j;->w:Z

    .line 703
    sput v1, Lcom/oplus/camera/ui/preview/a/j;->S:I

    const/4 v1, -0x1

    .line 704
    sget v2, Lcom/oplus/camera/ui/preview/a/j;->z:I

    if-eq v1, v2, :cond_2

    add-int/lit8 v0, v2, 0x1

    :cond_2
    sput v0, Lcom/oplus/camera/ui/preview/a/j;->A:I

    .line 705
    sget v0, Lcom/oplus/camera/ui/preview/a/j;->A:I

    const v1, 0x7f1002eb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "p4_3.cube.rgb.bin"

    invoke-virtual {p0, v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->c(ILjava/lang/String;Ljava/lang/Integer;)V

    :cond_3
    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/oplus/camera/ui/preview/a/i;)V
    .locals 6

    .line 369
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigStringListValue(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 372
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 373
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 377
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x180df4a9

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v3, :cond_3

    const v3, -0xfca32a8

    if-eq v2, v3, :cond_2

    const v3, 0x160cabd6

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "Serenity.cube.rgb.bin"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v1, v5

    goto :goto_1

    :cond_2
    const-string v2, "Radiance.cube.rgb.bin"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    const-string v2, "Emerald.cube.rgb.bin"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v1, v4

    :cond_4
    :goto_1
    if-eqz v1, :cond_7

    if-eq v1, v5, :cond_6

    if-eq v1, v4, :cond_5

    goto :goto_0

    :cond_5
    const v1, 0x7f10018c

    .line 387
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_6
    const v1, 0x7f10018e

    .line 383
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_7
    const v1, 0x7f10018d

    .line 379
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/oplus/camera/ui/preview/a/i;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_8
    return-void
.end method

.method private static a(Ljava/util/List;ZZIIIF)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lco/polarr/renderer/entities/DrawingItem;",
            ">;ZZIIIF)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 2013
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz p1, :cond_3

    add-int/lit8 v0, v0, -0x1

    move p1, v0

    :goto_0
    if-ltz p1, :cond_6

    sub-int v1, v0, p1

    .line 2018
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lco/polarr/renderer/entities/DrawingItem;

    const/4 v2, 0x1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 2019
    invoke-static/range {v1 .. v7}, Lcom/oplus/camera/ui/preview/a/j;->a(IZZIIIF)Landroid/graphics/Rect;

    move-result-object v1

    .line 2020
    iput-object v1, v8, Lco/polarr/renderer/entities/DrawingItem;->rect:Landroid/graphics/Rect;

    .line 2021
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    sget v3, Lcom/oplus/camera/ui/preview/a/j;->aa:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 2023
    iget-object v3, v8, Lco/polarr/renderer/entities/DrawingItem;->overlayBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    .line 2024
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sget v3, Lcom/oplus/camera/ui/preview/a/j;->ac:I

    add-int/2addr v1, v3

    sub-int/2addr v1, v2

    iput v1, v8, Lco/polarr/renderer/entities/DrawingItem;->overlayLeft:I

    .line 2028
    :cond_1
    iget-object v1, v8, Lco/polarr/renderer/entities/DrawingItem;->thumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 2029
    iget-object v1, v8, Lco/polarr/renderer/entities/DrawingItem;->thumbBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, p4, p5}, Lcom/oplus/camera/ui/preview/a/j;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v8, Lco/polarr/renderer/entities/DrawingItem;->thumbBitmap:Landroid/graphics/Bitmap;

    :cond_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_1
    if-ge p1, v0, :cond_6

    .line 2035
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lco/polarr/renderer/entities/DrawingItem;

    const/4 v2, 0x0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 2036
    invoke-static/range {v1 .. v7}, Lcom/oplus/camera/ui/preview/a/j;->a(IZZIIIF)Landroid/graphics/Rect;

    move-result-object v1

    .line 2037
    iput-object v1, v8, Lco/polarr/renderer/entities/DrawingItem;->rect:Landroid/graphics/Rect;

    .line 2038
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sget v2, Lcom/oplus/camera/ui/preview/a/j;->aa:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 2040
    iget-object v2, v8, Lco/polarr/renderer/entities/DrawingItem;->overlayBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    .line 2041
    sget v2, Lcom/oplus/camera/ui/preview/a/j;->ac:I

    sub-int/2addr v1, v2

    iget-object v2, v8, Lco/polarr/renderer/entities/DrawingItem;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v8, Lco/polarr/renderer/entities/DrawingItem;->overlayLeft:I

    .line 2045
    :cond_4
    iget-object v1, v8, Lco/polarr/renderer/entities/DrawingItem;->thumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    .line 2046
    iget-object v1, v8, Lco/polarr/renderer/entities/DrawingItem;->thumbBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, p4, p5}, Lcom/oplus/camera/ui/preview/a/j;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v8, Lco/polarr/renderer/entities/DrawingItem;->thumbBitmap:Landroid/graphics/Bitmap;

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method

.method private static varargs a([Ljava/lang/Object;)V
    .locals 5

    const-string v0, "com.oplus.support.grand.tour.filter"

    .line 222
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addGrandTourToFilterGroup, isExport: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oplus/camera/util/Util;->ak()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FilterHelper"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    .line 226
    instance-of v3, v2, Lcom/oplus/camera/ui/preview/a/i;

    if-nez v3, :cond_0

    goto/16 :goto_1

    .line 230
    :cond_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->ak()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 231
    check-cast v2, Lcom/oplus/camera/ui/preview/a/i;

    const v3, 0x7f100164

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "gt-lake.cube.rgb.bin"

    invoke-virtual {v2, v4, v3}, Lcom/oplus/camera/ui/preview/a/i;->d(Ljava/lang/String;Ljava/lang/Integer;)V

    const v3, 0x7f100166

    .line 232
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "gt-japan.cube.rgb.bin"

    invoke-virtual {v2, v4, v3}, Lcom/oplus/camera/ui/preview/a/i;->d(Ljava/lang/String;Ljava/lang/Integer;)V

    const v3, 0x7f100165

    .line 233
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "gt-earth.cube.rgb.bin"

    invoke-virtual {v2, v4, v3}, Lcom/oplus/camera/ui/preview/a/i;->d(Ljava/lang/String;Ljava/lang/Integer;)V

    const v3, 0x7f10016e

    .line 234
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "gt-rosy.cube.rgb.bin"

    invoke-virtual {v2, v4, v3}, Lcom/oplus/camera/ui/preview/a/i;->d(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 236
    :cond_1
    check-cast v2, Lcom/oplus/camera/ui/preview/a/i;

    const v3, 0x7f100171

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "gt-3dcity.cube.rgb.bin"

    invoke-virtual {v2, v4, v3}, Lcom/oplus/camera/ui/preview/a/i;->d(Ljava/lang/String;Ljava/lang/Integer;)V

    const v3, 0x7f10016a

    .line 237
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "gt-glazed-tile.cube.rgb.bin"

    invoke-virtual {v2, v4, v3}, Lcom/oplus/camera/ui/preview/a/i;->d(Ljava/lang/String;Ljava/lang/Integer;)V

    const v3, 0x7f100169

    .line 238
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "gt-desert.cube.rgb.bin"

    invoke-virtual {v2, v4, v3}, Lcom/oplus/camera/ui/preview/a/i;->d(Ljava/lang/String;Ljava/lang/Integer;)V

    const v3, 0x7f100168

    .line 239
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "gt-crisp-fall.cube.rgb.bin"

    invoke-virtual {v2, v4, v3}, Lcom/oplus/camera/ui/preview/a/i;->d(Ljava/lang/String;Ljava/lang/Integer;)V

    const v3, 0x7f10016b

    .line 240
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "gt-mountainous.cube.rgb.bin"

    invoke-virtual {v2, v4, v3}, Lcom/oplus/camera/ui/preview/a/i;->d(Ljava/lang/String;Ljava/lang/Integer;)V

    const v3, 0x7f100160

    .line 241
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "gt-after-glow.cube.rgb.bin"

    invoke-virtual {v2, v4, v3}, Lcom/oplus/camera/ui/preview/a/i;->d(Ljava/lang/String;Ljava/lang/Integer;)V

    const v3, 0x7f100167

    .line 242
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "gt-coco-grove.cube.rgb.bin"

    invoke-virtual {v2, v4, v3}, Lcom/oplus/camera/ui/preview/a/i;->d(Ljava/lang/String;Ljava/lang/Integer;)V

    const v3, 0x7f100170

    .line 243
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "gt-steaming.cube.rgb.bin"

    invoke-virtual {v2, v4, v3}, Lcom/oplus/camera/ui/preview/a/i;->d(Ljava/lang/String;Ljava/lang/Integer;)V

    const v3, 0x7f10016c

    .line 244
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "gt-24hour-city.cube.rgb.bin"

    invoke-virtual {v2, v4, v3}, Lcom/oplus/camera/ui/preview/a/i;->d(Ljava/lang/String;Ljava/lang/Integer;)V

    const v3, 0x7f10016d

    .line 245
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "gt-old-times.cube.rgb.bin"

    invoke-virtual {v2, v4, v3}, Lcom/oplus/camera/ui/preview/a/i;->d(Ljava/lang/String;Ljava/lang/Integer;)V

    const v3, 0x7f100161

    .line 246
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "gt-azure-water.cube.rgb.bin"

    invoke-virtual {v2, v4, v3}, Lcom/oplus/camera/ui/preview/a/i;->d(Ljava/lang/String;Ljava/lang/Integer;)V

    const v3, 0x7f100163

    .line 247
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "gt-blue-water.cube.rgb.bin"

    invoke-virtual {v2, v4, v3}, Lcom/oplus/camera/ui/preview/a/i;->d(Ljava/lang/String;Ljava/lang/Integer;)V

    const v3, 0x7f10016f

    .line 248
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "gt-quietly-ele.cube.rgb.bin"

    invoke-virtual {v2, v4, v3}, Lcom/oplus/camera/ui/preview/a/i;->d(Ljava/lang/String;Ljava/lang/Integer;)V

    const v3, 0x7f100162

    .line 249
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "gt-beach.cube.rgb.bin"

    invoke-virtual {v2, v4, v3}, Lcom/oplus/camera/ui/preview/a/i;->d(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method public static a(I)Z
    .locals 2

    .line 919
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->e:Lcom/oplus/camera/ui/preview/a/i;

    iget-object v0, v0, Lcom/oplus/camera/ui/preview/a/i;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 920
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    .line 921
    sget-boolean v0, Lcom/oplus/camera/ui/preview/a/j;->t:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->b:Ljava/lang/String;

    const-string v1, "None"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(ILcom/oplus/camera/ui/menu/levelcontrol/i;)Z
    .locals 2

    .line 1431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkStaticFilterIndex, index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", glModelParam: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FilterHelper"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1433
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1434
    invoke-virtual {p1, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->a(Ljava/lang/String;)I

    move-result v1

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Lcom/oplus/camera/ui/preview/a/i;Ljava/lang/String;I)Z
    .locals 1

    .line 2517
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/i;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/i;->d:Ljava/util/List;

    .line 2518
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-le p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static a(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/camera/ui/preview/a/k;",
            ">;)Z"
        }
    .end annotation

    .line 1419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkStaticFilter, filterModelList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FilterHelper"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/k;

    .line 1422
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->s:Ljava/util/List;

    iget-object v0, v0, Lcom/oplus/camera/ui/preview/a/k;->a:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Z)I
    .locals 0

    if-eqz p0, :cond_0

    .line 2105
    sget p0, Lcom/oplus/camera/ui/preview/a/j;->J:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/oplus/camera/ui/preview/a/j;->I:I

    :goto_0
    return p0
.end method

.method public static b(Lcom/oplus/camera/ui/menu/levelcontrol/i;IIZ)Landroid/graphics/Bitmap;
    .locals 16

    move/from16 v0, p1

    .line 2447
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->an:Landroid/text/TextPaint;

    if-eqz p3, :cond_0

    sget v2, Lcom/oplus/camera/ui/preview/a/j;->ap:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/oplus/camera/ui/preview/a/j;->ao:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 2448
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->an:Landroid/text/TextPaint;

    sget v2, Lcom/oplus/camera/ui/preview/a/j;->as:I

    int-to-float v2, v2

    if-eqz p3, :cond_1

    sget v3, Lcom/oplus/camera/ui/preview/a/j;->ar:I

    goto :goto_1

    :cond_1
    sget v3, Lcom/oplus/camera/ui/preview/a/j;->aq:I

    :goto_1
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 2449
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v2, p2

    invoke-static {v0, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 2450
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2451
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    const/high16 v2, 0x42b40000    # 90.0f

    .line 2452
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v0, v0

    int-to-float v0, v0

    .line 2453
    invoke-virtual {v1, v4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2460
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    move v6, v4

    move v7, v6

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oplus/camera/ui/preview/a/k;

    .line 2461
    iget-object v9, v8, Lcom/oplus/camera/ui/preview/a/k;->b:Ljava/lang/String;

    .line 2462
    sget-object v10, Lcom/oplus/camera/ui/preview/a/j;->an:Landroid/text/TextPaint;

    invoke-virtual {v10, v9}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v10

    const/4 v11, 0x1

    const/high16 v12, 0x40000000    # 2.0f

    if-nez v3, :cond_2

    .line 2466
    sget-object v3, Lcom/oplus/camera/ui/preview/a/j;->an:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    .line 2467
    iget v4, v3, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v6, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v4, v6

    .line 2469
    sget v6, Lcom/oplus/camera/ui/preview/a/j;->ad:I

    int-to-float v6, v6

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float v3, v4, v3

    add-float/2addr v3, v6

    .line 2472
    sget v6, Lcom/oplus/camera/ui/preview/a/j;->ad:I

    int-to-float v6, v6

    div-float v7, v4, v12

    add-float/2addr v6, v7

    sget-object v7, Lcom/oplus/camera/ui/preview/a/j;->al:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v12

    sub-float/2addr v6, v7

    move v7, v4

    move v4, v11

    goto :goto_3

    :cond_2
    move v15, v4

    move v4, v3

    move v3, v15

    .line 2475
    :goto_3
    sget v13, Lcom/oplus/camera/ui/preview/a/j;->W:F

    sub-float/2addr v13, v10

    div-float/2addr v13, v12

    .line 2477
    sget v14, Lcom/oplus/camera/ui/preview/a/j;->af:I

    int-to-float v14, v14

    invoke-static {v10, v14}, Ljava/lang/Float;->compare(FF)I

    move-result v14

    if-gtz v14, :cond_3

    .line 2478
    sget-object v11, Lcom/oplus/camera/ui/preview/a/j;->an:Landroid/text/TextPaint;

    invoke-virtual {v1, v9, v13, v3, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_5

    .line 2482
    :cond_3
    :goto_4
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v11, v10, :cond_4

    sget-object v10, Lcom/oplus/camera/ui/preview/a/j;->an:Landroid/text/TextPaint;

    .line 2483
    invoke-virtual {v9, v2, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v10

    sget v13, Lcom/oplus/camera/ui/preview/a/j;->af:I

    int-to-float v13, v13

    invoke-static {v10, v13}, Ljava/lang/Float;->compare(FF)I

    move-result v10

    if-gtz v10, :cond_4

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 2487
    :cond_4
    sget-object v10, Lcom/oplus/camera/ui/preview/a/j;->an:Landroid/text/TextPaint;

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v9, v2, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v10

    .line 2488
    sget v13, Lcom/oplus/camera/ui/preview/a/j;->W:F

    sub-float/2addr v13, v10

    div-float/2addr v13, v12

    .line 2489
    invoke-virtual {v9, v2, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    sget-object v14, Lcom/oplus/camera/ui/preview/a/j;->an:Landroid/text/TextPaint;

    invoke-virtual {v1, v10, v13, v3, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2490
    sget-object v10, Lcom/oplus/camera/ui/preview/a/j;->an:Landroid/text/TextPaint;

    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v10

    .line 2492
    sget v13, Lcom/oplus/camera/ui/preview/a/j;->W:F

    sub-float/2addr v13, v10

    div-float/2addr v13, v12

    .line 2493
    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    add-float v11, v3, v7

    sget-object v14, Lcom/oplus/camera/ui/preview/a/j;->an:Landroid/text/TextPaint;

    invoke-virtual {v1, v9, v13, v11, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2496
    :goto_5
    iget-boolean v8, v8, Lcom/oplus/camera/ui/preview/a/k;->c:Z

    if-eqz v8, :cond_5

    .line 2497
    sget-object v8, Lcom/oplus/camera/ui/preview/a/j;->al:Landroid/graphics/Bitmap;

    sget v9, Lcom/oplus/camera/ui/preview/a/j;->W:F

    add-float/2addr v9, v10

    div-float/2addr v9, v12

    sget v10, Lcom/oplus/camera/ui/preview/a/j;->ag:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    const/4 v10, 0x0

    invoke-virtual {v1, v8, v9, v6, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2501
    :cond_5
    sget v8, Lcom/oplus/camera/ui/preview/a/j;->ae:I

    int-to-float v9, v8

    add-float/2addr v3, v9

    int-to-float v8, v8

    add-float/2addr v6, v8

    move v15, v4

    move v4, v3

    move v3, v15

    goto/16 :goto_2

    .line 2505
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->n()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2506
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 2507
    invoke-virtual {v10, v0, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 2508
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/4 v11, 0x1

    invoke-static/range {v5 .. v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 2511
    :cond_7
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    return-object v5
.end method

.method public static b(Lcom/oplus/camera/ui/menu/levelcontrol/i;IIZI)Landroid/graphics/Bitmap;
    .locals 22

    move/from16 v0, p4

    .line 2344
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->an:Landroid/text/TextPaint;

    if-eqz p3, :cond_0

    sget v2, Lcom/oplus/camera/ui/preview/a/j;->ap:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/oplus/camera/ui/preview/a/j;->ao:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 2345
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->an:Landroid/text/TextPaint;

    sget v2, Lcom/oplus/camera/ui/preview/a/j;->as:I

    int-to-float v2, v2

    if-eqz p3, :cond_1

    sget v3, Lcom/oplus/camera/ui/preview/a/j;->ar:I

    goto :goto_1

    :cond_1
    sget v3, Lcom/oplus/camera/ui/preview/a/j;->aq:I

    :goto_1
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 2346
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-static {v2, v3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 2347
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2355
    sget v2, Lcom/oplus/camera/ui/preview/a/j;->ab:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float v6, v2, v3

    .line 2358
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->b()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v10, v4

    move v11, v10

    move v12, v11

    const/4 v4, 0x0

    const/4 v9, 0x0

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/oplus/camera/ui/preview/a/k;

    .line 2359
    iget-object v14, v13, Lcom/oplus/camera/ui/preview/a/k;->b:Ljava/lang/String;

    .line 2360
    sget-object v15, Lcom/oplus/camera/ui/preview/a/j;->an:Landroid/text/TextPaint;

    invoke-virtual {v15, v14}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v15

    const/16 v16, 0x1

    if-nez v4, :cond_2

    .line 2364
    sget-object v4, Lcom/oplus/camera/ui/preview/a/j;->an:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    .line 2365
    iget v10, v4, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v11, v4, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v10, v11

    .line 2367
    sget v11, Lcom/oplus/camera/ui/preview/a/j;->ad:I

    int-to-float v11, v11

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float v4, v10, v4

    add-float/2addr v11, v4

    .line 2370
    sget v4, Lcom/oplus/camera/ui/preview/a/j;->ad:I

    int-to-float v4, v4

    div-float v12, v10, v3

    add-float/2addr v4, v12

    sget-object v12, Lcom/oplus/camera/ui/preview/a/j;->al:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v3

    sub-float/2addr v4, v12

    move v12, v4

    move/from16 v4, v16

    move/from16 v21, v11

    move v11, v10

    move/from16 v10, v21

    .line 2373
    :cond_2
    sget v8, Lcom/oplus/camera/ui/preview/a/j;->af:I

    int-to-float v8, v8

    invoke-static {v15, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-gtz v8, :cond_3

    sub-float v8, v2, v15

    const/high16 v16, 0x40000000    # 2.0f

    div-float v8, v8, v16

    .line 2374
    sget v16, Lcom/oplus/camera/ui/preview/a/j;->X:F

    add-float v17, v2, v16

    int-to-float v3, v9

    mul-float v17, v17, v3

    add-float v8, v8, v17

    add-float v8, v8, v16

    .line 2375
    sget-object v3, Lcom/oplus/camera/ui/preview/a/j;->an:Landroid/text/TextPaint;

    invoke-virtual {v1, v14, v8, v10, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move/from16 v20, v2

    move/from16 v16, v4

    move/from16 v17, v6

    move-object/from16 p1, v7

    :goto_3
    const/high16 v3, 0x40000000    # 2.0f

    goto/16 :goto_7

    :cond_3
    move/from16 v3, v16

    .line 2379
    :goto_4
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v3, v8, :cond_4

    sget-object v8, Lcom/oplus/camera/ui/preview/a/j;->an:Landroid/text/TextPaint;

    move/from16 v16, v4

    const/4 v15, 0x0

    .line 2380
    invoke-virtual {v14, v15, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    sget v8, Lcom/oplus/camera/ui/preview/a/j;->af:I

    int-to-float v8, v8

    invoke-static {v4, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-gtz v4, :cond_5

    add-int/lit8 v3, v3, 0x1

    move/from16 v4, v16

    goto :goto_4

    :cond_4
    move/from16 v16, v4

    .line 2384
    :cond_5
    sget-object v4, Lcom/oplus/camera/ui/preview/a/j;->an:Landroid/text/TextPaint;

    add-int/lit8 v8, v3, -0x1

    move-object/from16 p1, v7

    const/4 v15, 0x0

    invoke-virtual {v14, v15, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 2385
    sget v7, Lcom/oplus/camera/ui/preview/a/j;->X:F

    add-float v17, v2, v7

    int-to-float v15, v9

    mul-float v17, v17, v15

    add-float v17, v17, v7

    const/4 v7, 0x0

    .line 2387
    invoke-virtual {v14, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    add-float v18, v17, v6

    const/high16 v19, 0x40000000    # 2.0f

    div-float v4, v4, v19

    sub-float v4, v18, v4

    sget-object v7, Lcom/oplus/camera/ui/preview/a/j;->an:Landroid/text/TextPaint;

    invoke-virtual {v1, v15, v4, v10, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2388
    sget-object v4, Lcom/oplus/camera/ui/preview/a/j;->an:Landroid/text/TextPaint;

    invoke-virtual {v14, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v15

    .line 2390
    iget-boolean v4, v13, Lcom/oplus/camera/ui/preview/a/k;->c:Z

    if-eqz v4, :cond_6

    .line 2391
    sget-object v4, Lcom/oplus/camera/ui/preview/a/j;->al:Landroid/graphics/Bitmap;

    add-float v7, v2, v15

    div-float v7, v7, v19

    add-float v17, v17, v7

    sget v7, Lcom/oplus/camera/ui/preview/a/j;->ag:I

    int-to-float v7, v7

    add-float v7, v17, v7

    div-float v17, v11, v19

    move/from16 v20, v2

    add-float v2, v12, v17

    move/from16 v17, v6

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v7, v2, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_5

    :cond_6
    move/from16 v20, v2

    move/from16 v17, v6

    .line 2395
    :goto_5
    sget v2, Lcom/oplus/camera/ui/preview/a/j;->af:I

    int-to-float v2, v2

    invoke-static {v15, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-gtz v2, :cond_7

    .line 2396
    invoke-virtual {v14, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    div-float v3, v15, v19

    sub-float v3, v18, v3

    add-float v4, v10, v11

    sget-object v6, Lcom/oplus/camera/ui/preview/a/j;->an:Landroid/text/TextPaint;

    invoke-virtual {v1, v2, v3, v4, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    :cond_7
    :goto_6
    add-int/lit8 v3, v3, 0x1

    .line 2399
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v2

    const-string v4, "..."

    if-ge v3, v2, :cond_8

    sget-object v2, Lcom/oplus/camera/ui/preview/a/j;->an:Landroid/text/TextPaint;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 2400
    invoke-virtual {v14, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    sget v6, Lcom/oplus/camera/ui/preview/a/j;->af:I

    int-to-float v6, v6

    invoke-static {v2, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-gtz v2, :cond_8

    goto :goto_6

    .line 2404
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v14, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2405
    sget-object v3, Lcom/oplus/camera/ui/preview/a/j;->an:Landroid/text/TextPaint;

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v15

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, v15, v3

    sub-float v4, v18, v4

    add-float v6, v10, v11

    .line 2406
    sget-object v7, Lcom/oplus/camera/ui/preview/a/j;->an:Landroid/text/TextPaint;

    invoke-virtual {v1, v2, v4, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2410
    :goto_7
    iget-boolean v2, v13, Lcom/oplus/camera/ui/preview/a/k;->c:Z

    if-eqz v2, :cond_9

    .line 2411
    sget-object v2, Lcom/oplus/camera/ui/preview/a/j;->al:Landroid/graphics/Bitmap;

    sget v4, Lcom/oplus/camera/ui/preview/a/j;->ab:F

    add-float/2addr v4, v15

    div-float/2addr v4, v3

    sget v6, Lcom/oplus/camera/ui/preview/a/j;->ag:I

    int-to-float v6, v6

    add-float/2addr v4, v6

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v4, v12, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_9
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v7, p1

    move/from16 v4, v16

    move/from16 v6, v17

    move/from16 v2, v20

    goto/16 :goto_2

    .line 2418
    :cond_a
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    const/16 v1, 0x5a

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    if-ne v1, v0, :cond_c

    .line 2421
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->m()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2422
    invoke-virtual {v10, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_8

    .line 2424
    :cond_b
    invoke-virtual {v10, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    :goto_8
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 2427
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/4 v11, 0x1

    invoke-static/range {v5 .. v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_9

    :cond_c
    const/16 v1, 0x10e

    if-ne v1, v0, :cond_d

    .line 2429
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->m()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2430
    invoke-virtual {v10, v3, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 2432
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/4 v11, 0x1

    invoke-static/range {v5 .. v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    :cond_d
    :goto_9
    return-object v5
.end method

.method public static b(I)Ljava/lang/String;
    .locals 1

    if-ltz p0, :cond_1

    .line 2063
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->f:Lcom/oplus/camera/ui/preview/a/i;

    iget-object v0, v0, Lcom/oplus/camera/ui/preview/a/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p0, v0, :cond_0

    goto :goto_0

    .line 2067
    :cond_0
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->f:Lcom/oplus/camera/ui/preview/a/i;

    iget-object v0, v0, Lcom/oplus/camera/ui/preview/a/i;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public static b(II)Ljava/lang/String;
    .locals 1

    .line 2053
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->e:Lcom/oplus/camera/ui/preview/a/i;

    invoke-static {p1}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/preview/a/i;->a(Z)Ljava/util/List;

    move-result-object p1

    if-ltz p0, :cond_1

    .line 2055
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le p0, v0, :cond_0

    goto :goto_0

    .line 2059
    :cond_0
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public static b()V
    .locals 3

    .line 518
    sget-boolean v0, Lcom/oplus/camera/ui/preview/a/j;->u:Z

    if-nez v0, :cond_0

    .line 519
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->q:Lcom/oplus/camera/ui/preview/a/i;

    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->e:Lcom/oplus/camera/ui/preview/a/i;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2}, Lcom/oplus/camera/ui/preview/a/i;->a(Lcom/oplus/camera/ui/preview/a/i;ZZ)V

    .line 520
    sput-boolean v2, Lcom/oplus/camera/ui/preview/a/j;->u:Z

    :cond_0
    const-string v0, "com.oplus.mono.filter.support"

    .line 523
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "com.oplus.mono.filter.mode.place"

    .line 524
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    .line 525
    sget-boolean v0, Lcom/oplus/camera/ui/preview/a/j;->v:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->q:Lcom/oplus/camera/ui/preview/a/i;

    sget v1, Lcom/oplus/camera/ui/preview/a/j;->z:I

    const-string v2, "p4_1.cube.rgb.bin"

    invoke-static {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/j;->a(Lcom/oplus/camera/ui/preview/a/i;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 526
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->q:Lcom/oplus/camera/ui/preview/a/i;

    sget v1, Lcom/oplus/camera/ui/preview/a/j;->z:I

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/preview/a/i;->a(I)V

    goto :goto_0

    .line 527
    :cond_1
    sget-boolean v0, Lcom/oplus/camera/ui/preview/a/j;->w:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->q:Lcom/oplus/camera/ui/preview/a/i;

    sget v1, Lcom/oplus/camera/ui/preview/a/j;->A:I

    const-string v2, "p4_3.cube.rgb.bin"

    invoke-static {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/j;->a(Lcom/oplus/camera/ui/preview/a/i;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 528
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->q:Lcom/oplus/camera/ui/preview/a/i;

    sget v1, Lcom/oplus/camera/ui/preview/a/j;->A:I

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/preview/a/i;->a(I)V

    goto :goto_0

    .line 529
    :cond_2
    sget-boolean v0, Lcom/oplus/camera/ui/preview/a/j;->x:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->q:Lcom/oplus/camera/ui/preview/a/i;

    sget v1, Lcom/oplus/camera/ui/preview/a/j;->B:I

    const-string v2, "ByYo3If"

    invoke-static {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/j;->a(Lcom/oplus/camera/ui/preview/a/i;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 530
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->q:Lcom/oplus/camera/ui/preview/a/i;

    sget v1, Lcom/oplus/camera/ui/preview/a/j;->B:I

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/preview/a/i;->a(I)V

    goto :goto_0

    .line 531
    :cond_3
    sget-boolean v0, Lcom/oplus/camera/ui/preview/a/j;->y:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->q:Lcom/oplus/camera/ui/preview/a/i;

    sget v1, Lcom/oplus/camera/ui/preview/a/j;->C:I

    const-string v2, "rJ5g5vPWG"

    invoke-static {v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/j;->a(Lcom/oplus/camera/ui/preview/a/i;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 532
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->q:Lcom/oplus/camera/ui/preview/a/i;

    sget v1, Lcom/oplus/camera/ui/preview/a/j;->C:I

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/preview/a/i;->a(I)V

    .line 535
    :cond_4
    :goto_0
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->N()V

    return-void
.end method

.method private static b(Landroid/content/res/Resources;Lcom/oplus/camera/ui/menu/levelcontrol/i;Ljava/util/List;IZZIIIF)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lcom/oplus/camera/ui/menu/levelcontrol/i;",
            "Ljava/util/List<",
            "Lcom/oplus/camera/ui/preview/a/k;",
            ">;IZZIIIF)V"
        }
    .end annotation

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move/from16 v12, p8

    const-string v0, "FilterHelper"

    const-string v1, "generateDrawingItemsVertical"

    .line 1487
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1489
    new-instance v13, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v13}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 1490
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v14

    .line 1492
    invoke-static/range {p2 .. p2}, Lcom/oplus/camera/ui/preview/a/j;->a(Ljava/util/List;)Z

    move-result v15

    .line 1493
    invoke-virtual {v10, v15}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->a(Z)V

    if-eqz p5, :cond_0

    const/4 v0, 0x0

    move v9, v0

    :goto_0
    if-ge v9, v14, :cond_1

    .line 1498
    new-instance v8, Lco/polarr/renderer/entities/DrawingItem;

    invoke-direct {v8}, Lco/polarr/renderer/entities/DrawingItem;-><init>()V

    move v0, v9

    move/from16 v1, p5

    move/from16 v2, p4

    move/from16 v3, p6

    move/from16 v4, p7

    move/from16 v5, p8

    move/from16 v6, p9

    .line 1499
    invoke-static/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/j;->a(IZZIIIF)Landroid/graphics/Rect;

    move-result-object v0

    .line 1500
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/preview/a/k;

    .line 1501
    iput-object v0, v8, Lco/polarr/renderer/entities/DrawingItem;->rect:Landroid/graphics/Rect;

    .line 1502
    iget-object v5, v1, Lcom/oplus/camera/ui/preview/a/k;->a:Ljava/lang/String;

    int-to-float v0, v12

    mul-float v0, v0, p9

    .line 1503
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    move/from16 v3, p4

    move v4, v9

    move/from16 v6, p3

    move-object v10, v8

    move/from16 v8, p8

    move/from16 v16, v9

    move v9, v15

    .line 1502
    invoke-static/range {v0 .. v9}, Lcom/oplus/camera/ui/preview/a/j;->a(Landroid/content/res/Resources;Lcom/oplus/camera/ui/menu/levelcontrol/i;Lco/polarr/renderer/entities/DrawingItem;ZILjava/lang/String;IIIZ)V

    .line 1504
    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v16, 0x1

    move-object/from16 v10, p1

    goto :goto_0

    :cond_0
    add-int/lit8 v14, v14, -0x1

    move v10, v14

    :goto_1
    if-ltz v10, :cond_1

    sub-int v0, v14, v10

    .line 1509
    new-instance v9, Lco/polarr/renderer/entities/DrawingItem;

    invoke-direct {v9}, Lco/polarr/renderer/entities/DrawingItem;-><init>()V

    move/from16 v1, p5

    move/from16 v2, p4

    move/from16 v3, p6

    move/from16 v4, p7

    move/from16 v5, p8

    move/from16 v6, p9

    .line 1510
    invoke-static/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/j;->a(IZZIIIF)Landroid/graphics/Rect;

    move-result-object v0

    .line 1511
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/preview/a/k;

    .line 1512
    iput-object v0, v9, Lco/polarr/renderer/entities/DrawingItem;->rect:Landroid/graphics/Rect;

    .line 1513
    iget-object v5, v1, Lcom/oplus/camera/ui/preview/a/k;->a:Ljava/lang/String;

    int-to-float v0, v12

    mul-float v0, v0, p9

    .line 1514
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v9

    move/from16 v3, p4

    move v4, v10

    move/from16 v6, p3

    move/from16 v8, p8

    move-object v11, v9

    move v9, v15

    .line 1513
    invoke-static/range {v0 .. v9}, Lcom/oplus/camera/ui/preview/a/j;->a(Landroid/content/res/Resources;Lcom/oplus/camera/ui/menu/levelcontrol/i;Lco/polarr/renderer/entities/DrawingItem;ZILjava/lang/String;IIIZ)V

    .line 1515
    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, -0x1

    move-object/from16 v11, p2

    goto :goto_1

    :cond_1
    move-object/from16 v0, p1

    .line 1519
    invoke-virtual {v0, v13}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->a(Ljava/util/List;)V

    .line 1520
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->a(I)V

    return-void
.end method

.method public static b(Landroid/content/res/Resources;Ljava/lang/String;IIZZLjava/util/List;Lcom/oplus/camera/ui/preview/a/p;F)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/lang/String;",
            "IIZZ",
            "Ljava/util/List<",
            "Lcom/oplus/camera/ui/preview/a/k;",
            ">;",
            "Lcom/oplus/camera/ui/preview/a/p;",
            "F)V"
        }
    .end annotation

    move-object v0, p0

    const-string v1, "FilterHelper"

    const-string v2, "setImageResourceVertical90"

    .line 1293
    invoke-static {v1, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x7f070c92

    .line 1295
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->aa:I

    const v1, 0x7f070c94

    .line 1296
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->W:F

    const v1, 0x7f070c96

    .line 1297
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->ab:F

    const v1, 0x7f070c93

    .line 1298
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->X:F

    const v1, 0x7f070c95

    .line 1299
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->Y:F

    .line 1301
    sget v1, Lcom/oplus/camera/ui/preview/a/j;->ac:I

    if-nez v1, :cond_0

    const v1, 0x7f070624

    .line 1302
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->ac:I

    .line 1305
    :cond_0
    sget v1, Lcom/oplus/camera/ui/preview/a/j;->ax:I

    if-nez v1, :cond_1

    const v1, 0x7f07074c

    .line 1306
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->ax:I

    .line 1309
    :cond_1
    sget v1, Lcom/oplus/camera/ui/preview/a/j;->ay:I

    if-nez v1, :cond_2

    const v1, 0x7f07074e

    .line 1310
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->ay:I

    .line 1313
    :cond_2
    sget v1, Lcom/oplus/camera/ui/preview/a/j;->az:I

    if-nez v1, :cond_3

    const v1, 0x7f070744

    .line 1314
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->az:I

    .line 1317
    :cond_3
    sget v1, Lcom/oplus/camera/ui/preview/a/j;->Z:F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_4

    const v1, 0x7f070750

    .line 1318
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->Z:F

    :cond_4
    const v1, 0x7f08040a

    .line 1321
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/oplus/camera/ui/preview/a/j;->aj:Landroid/graphics/Bitmap;

    const v1, 0x7f080410

    .line 1322
    invoke-static {p0, v1}, Lcom/oplus/camera/ui/preview/a/j;->a(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/oplus/camera/ui/preview/a/j;->ak:Landroid/graphics/Bitmap;

    .line 1324
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->al:Landroid/graphics/Bitmap;

    if-nez v1, :cond_5

    const v1, 0x7f08040d

    .line 1325
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/oplus/camera/ui/preview/a/j;->al:Landroid/graphics/Bitmap;

    .line 1328
    :cond_5
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->am:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    if-nez v1, :cond_6

    const v1, 0x7f080409

    .line 1329
    invoke-virtual {p0, v1, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1330
    invoke-static {v1}, Lcom/oplus/camera/util/Util;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/oplus/camera/ui/preview/a/j;->am:Landroid/graphics/Bitmap;

    .line 1333
    :cond_6
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->an:Landroid/text/TextPaint;

    const/4 v4, 0x1

    if-nez v1, :cond_7

    .line 1334
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/oplus/camera/ui/preview/a/j;->an:Landroid/text/TextPaint;

    const v1, 0x7f0600a2

    .line 1335
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->ao:I

    const v1, 0x7f060072

    .line 1336
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->ap:I

    const v1, 0x7f06006a

    .line 1337
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->aq:I

    const v1, 0x7f060065

    .line 1338
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->ar:I

    const v1, 0x7f0700ec

    .line 1339
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->as:I

    .line 1340
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->an:Landroid/text/TextPaint;

    sget v5, Lcom/oplus/camera/ui/preview/a/j;->ao:I

    invoke-virtual {v1, v5}, Landroid/text/TextPaint;->setColor(I)V

    .line 1341
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->an:Landroid/text/TextPaint;

    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 1342
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->an:Landroid/text/TextPaint;

    sget v5, Lcom/oplus/camera/ui/preview/a/j;->as:I

    int-to-float v5, v5

    sget v6, Lcom/oplus/camera/ui/preview/a/j;->aq:I

    invoke-virtual {v1, v5, v2, v2, v6}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 1343
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->an:Landroid/text/TextPaint;

    const v5, 0x7f07074d

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    :cond_7
    const v1, 0x7f070746

    .line 1346
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->ad:I

    const v1, 0x7f07074a

    .line 1347
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->ag:I

    const v1, 0x7f070748

    .line 1348
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->af:I

    const v1, 0x7f070740

    .line 1349
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->ah:I

    const v1, 0x7f070728

    .line 1350
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->ai:I

    const v1, 0x7f07074f

    .line 1351
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->ae:I

    .line 1353
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->au:Landroid/graphics/Paint$FontMetricsInt;

    if-nez v1, :cond_8

    .line 1354
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->an:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    sput-object v1, Lcom/oplus/camera/ui/preview/a/j;->au:Landroid/graphics/Paint$FontMetricsInt;

    .line 1357
    :cond_8
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->au:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sget-object v5, Lcom/oplus/camera/ui/preview/a/j;->au:Landroid/graphics/Paint$FontMetricsInt;

    iget v5, v5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v1, v5

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->aA:I

    .line 1358
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->au:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->aB:I

    .line 1360
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->an:Landroid/text/TextPaint;

    invoke-static {v4}, Lcom/oplus/camera/util/Util;->c(Z)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1361
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->an:Landroid/text/TextPaint;

    const/4 v5, 0x0

    const/4 v6, 0x3

    sget-object v7, Lcom/oplus/camera/ui/preview/a/j;->at:Landroid/graphics/Rect;

    const-string v8, "..."

    invoke-virtual {v1, v8, v5, v6, v7}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1362
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->at:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->aC:I

    .line 1364
    sget v1, Lcom/oplus/camera/ui/preview/a/j;->W:F

    sget v5, Lcom/oplus/camera/ui/preview/a/j;->ax:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v1, v5

    sput v1, Lcom/oplus/camera/ui/preview/a/j;->av:F

    .line 1366
    sget v1, Lcom/oplus/camera/ui/preview/a/j;->aa:I

    int-to-float v5, v1

    mul-float v5, v5, p8

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, p8, v6

    if-lez v6, :cond_9

    int-to-float v1, v1

    sub-float v1, v5, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-double v1, v1

    .line 1370
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    float-to-double v5, v5

    div-double/2addr v1, v5

    double-to-float v2, v1

    .line 1373
    :cond_9
    new-instance v10, Lcom/oplus/camera/ui/menu/levelcontrol/i;

    move-object v1, p1

    invoke-direct {v10, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;-><init>(Ljava/lang/String;)V

    .line 1374
    invoke-virtual {v10, v3}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->c(Ljava/util/List;)V

    move-object/from16 v3, p6

    .line 1375
    invoke-virtual {v10, v3}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->b(Ljava/util/List;)V

    .line 1376
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->aj:Landroid/graphics/Bitmap;

    invoke-virtual {v10, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->a(Landroid/graphics/Bitmap;)V

    .line 1377
    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->ak:Landroid/graphics/Bitmap;

    invoke-virtual {v10, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->b(Landroid/graphics/Bitmap;)V

    move v1, p2

    .line 1378
    invoke-virtual {v10, p2}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->f(I)V

    const/high16 v1, 0x42700000    # 60.0f

    .line 1379
    invoke-virtual {v10, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->a(F)V

    .line 1380
    sget v1, Lcom/oplus/camera/ui/preview/a/j;->ab:F

    invoke-virtual {v10, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->b(F)V

    .line 1381
    sget v1, Lcom/oplus/camera/ui/preview/a/j;->W:F

    invoke-virtual {v10, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->c(F)V

    .line 1382
    sget v1, Lcom/oplus/camera/ui/preview/a/j;->X:F

    invoke-virtual {v10, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->d(F)V

    .line 1383
    sget v1, Lcom/oplus/camera/ui/preview/a/j;->Y:F

    invoke-virtual {v10, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->e(F)V

    .line 1384
    invoke-virtual {v10, v2}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->f(F)V

    move v5, p4

    .line 1385
    invoke-virtual {v10, p4}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->b(Z)V

    move/from16 v6, p5

    .line 1386
    invoke-virtual {v10, v6}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->c(Z)V

    .line 1387
    invoke-virtual {v10, v4}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->e(Z)V

    .line 1388
    sget v1, Lcom/oplus/camera/ui/preview/a/j;->ah:I

    invoke-virtual {v10, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->g(I)V

    .line 1390
    sget v1, Lcom/oplus/camera/ui/preview/a/j;->X:F

    float-to-int v7, v1

    sget v1, Lcom/oplus/camera/ui/preview/a/j;->ab:F

    float-to-int v8, v1

    sget v1, Lcom/oplus/camera/ui/preview/a/j;->W:F

    float-to-int v9, v1

    move-object v0, p0

    move-object v1, v10

    move-object/from16 v2, p6

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move v6, v7

    move v7, v8

    move v8, v9

    move/from16 v9, p8

    invoke-static/range {v0 .. v9}, Lcom/oplus/camera/ui/preview/a/j;->a(Landroid/content/res/Resources;Lcom/oplus/camera/ui/menu/levelcontrol/i;Ljava/util/List;IZZIIIF)V

    move-object/from16 v0, p7

    .line 1392
    invoke-interface {v0, v10}, Lcom/oplus/camera/ui/preview/a/p;->a(Lcom/oplus/camera/ui/menu/levelcontrol/i;)V

    return-void
.end method

.method private static b(Lcom/oplus/camera/ui/preview/a/i;)V
    .locals 5

    .line 710
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "rear_mono_1"

    .line 712
    invoke-static {v1}, Lcom/oplus/camera/e/a;->a(Ljava/lang/String;)I

    move-result v1

    .line 714
    sget-boolean v2, Lcom/oplus/camera/ui/preview/a/j;->x:Z

    const/4 v3, 0x1

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    .line 715
    sput-boolean v3, Lcom/oplus/camera/ui/preview/a/j;->x:Z

    .line 716
    sput v1, Lcom/oplus/camera/ui/preview/a/j;->T:I

    .line 717
    sput v0, Lcom/oplus/camera/ui/preview/a/j;->B:I

    .line 718
    sget v1, Lcom/oplus/camera/ui/preview/a/j;->B:I

    const v2, 0x7f100172

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "ByYo3If"

    invoke-virtual {p0, v1, v4, v2}, Lcom/oplus/camera/ui/preview/a/i;->c(ILjava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    const-string v1, "rear_mono_2"

    .line 721
    invoke-static {v1}, Lcom/oplus/camera/e/a;->a(Ljava/lang/String;)I

    move-result v1

    .line 723
    sget-boolean v2, Lcom/oplus/camera/ui/preview/a/j;->y:Z

    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    .line 724
    sput-boolean v3, Lcom/oplus/camera/ui/preview/a/j;->y:Z

    .line 725
    sput v1, Lcom/oplus/camera/ui/preview/a/j;->U:I

    const/4 v1, -0x1

    .line 726
    sget v2, Lcom/oplus/camera/ui/preview/a/j;->B:I

    if-eq v1, v2, :cond_1

    add-int/lit8 v0, v2, 0x1

    :cond_1
    sput v0, Lcom/oplus/camera/ui/preview/a/j;->C:I

    .line 727
    sget v0, Lcom/oplus/camera/ui/preview/a/j;->C:I

    const v1, 0x7f100186

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "rJ5g5vPWG"

    invoke-virtual {p0, v0, v2, v1}, Lcom/oplus/camera/ui/preview/a/i;->c(ILjava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 9

    .line 865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateGrandTourFilters, city: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->r:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " selectedCity :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FilterHelper"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_7

    const-string v0, "com.oplus.support.grand.tour.filter"

    .line 869
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->r:Ljava/util/HashMap;

    .line 870
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->b:Ljava/lang/String;

    .line 871
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 877
    :cond_0
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->r:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 879
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_2

    :cond_1
    const/4 v1, 0x0

    move v3, v1

    .line 886
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, -0x1

    if-ge v3, v4, :cond_3

    .line 887
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 888
    sget-object v6, Lcom/oplus/camera/ui/preview/a/j;->e:Lcom/oplus/camera/ui/preview/a/i;

    iget-object v6, v6, Lcom/oplus/camera/ui/preview/a/i;->b:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-eq v6, v5, :cond_2

    .line 891
    sget-object v5, Lcom/oplus/camera/ui/preview/a/j;->e:Lcom/oplus/camera/ui/preview/a/i;

    iget-object v5, v5, Lcom/oplus/camera/ui/preview/a/i;->d:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 892
    sget-object v7, Lcom/oplus/camera/ui/preview/a/j;->c:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 893
    sget-object v6, Lcom/oplus/camera/ui/preview/a/j;->d:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move v3, v2

    .line 901
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 902
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 903
    sget-object v6, Lcom/oplus/camera/ui/preview/a/j;->e:Lcom/oplus/camera/ui/preview/a/i;

    iget-object v6, v6, Lcom/oplus/camera/ui/preview/a/i;->b:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-eq v6, v5, :cond_4

    .line 906
    sget-object v7, Lcom/oplus/camera/ui/preview/a/j;->e:Lcom/oplus/camera/ui/preview/a/i;

    iget-object v7, v7, Lcom/oplus/camera/ui/preview/a/i;->d:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 907
    sget-object v8, Lcom/oplus/camera/ui/preview/a/j;->e:Lcom/oplus/camera/ui/preview/a/i;

    invoke-virtual {v8, v6}, Lcom/oplus/camera/ui/preview/a/i;->a(I)V

    .line 908
    sget-object v6, Lcom/oplus/camera/ui/preview/a/j;->e:Lcom/oplus/camera/ui/preview/a/i;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v3, v4, v7}, Lcom/oplus/camera/ui/preview/a/i;->c(ILjava/lang/String;Ljava/lang/Integer;)V

    add-int/lit8 v3, v3, 0x1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 914
    :cond_5
    sput-object p0, Lcom/oplus/camera/ui/preview/a/j;->b:Ljava/lang/String;

    .line 915
    sput-boolean v2, Lcom/oplus/camera/ui/preview/a/j;->t:Z

    return-void

    .line 880
    :cond_6
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateGrandTourFiltersList, No filters for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " city"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7
    :goto_3
    const-string p0, "updateGrandTourFiltersList, - No need to update the filter list."

    .line 872
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static c(II)Ljava/lang/String;
    .locals 1

    .line 2071
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->i:Lcom/oplus/camera/ui/preview/a/i;

    invoke-static {p1}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/preview/a/i;->a(Z)Ljava/util/List;

    move-result-object p1

    if-ltz p0, :cond_1

    .line 2073
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le p0, v0, :cond_0

    goto :goto_0

    .line 2077
    :cond_0
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public static c()V
    .locals 2

    const-string v0, "com.oplus.mono.filter.support"

    .line 658
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "com.oplus.mono.filter.mode.place"

    .line 659
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 662
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->e:Lcom/oplus/camera/ui/preview/a/i;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/j;->b(Lcom/oplus/camera/ui/preview/a/i;)V

    .line 663
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->e:Lcom/oplus/camera/ui/preview/a/i;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/j;->a(Lcom/oplus/camera/ui/preview/a/i;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v1, v0, :cond_1

    .line 665
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->i:Lcom/oplus/camera/ui/preview/a/i;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/j;->b(Lcom/oplus/camera/ui/preview/a/i;)V

    .line 666
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->i:Lcom/oplus/camera/ui/preview/a/i;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/j;->a(Lcom/oplus/camera/ui/preview/a/i;)V

    goto :goto_0

    .line 668
    :cond_1
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->e:Lcom/oplus/camera/ui/preview/a/i;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/j;->b(Lcom/oplus/camera/ui/preview/a/i;)V

    .line 669
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->e:Lcom/oplus/camera/ui/preview/a/i;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/j;->a(Lcom/oplus/camera/ui/preview/a/i;)V

    .line 670
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->i:Lcom/oplus/camera/ui/preview/a/i;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/j;->b(Lcom/oplus/camera/ui/preview/a/i;)V

    .line 671
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->i:Lcom/oplus/camera/ui/preview/a/i;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/j;->a(Lcom/oplus/camera/ui/preview/a/i;)V

    .line 675
    :cond_2
    :goto_0
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->N()V

    return-void
.end method

.method public static d(II)Ljava/lang/String;
    .locals 1

    .line 2081
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->j:Lcom/oplus/camera/ui/preview/a/i;

    invoke-static {p1}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/preview/a/i;->a(Z)Ljava/util/List;

    move-result-object p1

    if-ltz p0, :cond_1

    .line 2083
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le p0, v0, :cond_0

    goto :goto_0

    .line 2087
    :cond_0
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public static d()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 753
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->r:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static e(II)Ljava/lang/String;
    .locals 0

    if-ltz p0, :cond_1

    .line 2109
    sget-object p1, Lcom/oplus/camera/ui/preview/a/j;->k:Lcom/oplus/camera/ui/preview/a/i;

    iget-object p1, p1, Lcom/oplus/camera/ui/preview/a/i;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-le p0, p1, :cond_0

    goto :goto_0

    .line 2113
    :cond_0
    sget-object p1, Lcom/oplus/camera/ui/preview/a/j;->k:Lcom/oplus/camera/ui/preview/a/i;

    iget-object p1, p1, Lcom/oplus/camera/ui/preview/a/i;->e:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public static e()V
    .locals 1

    .line 818
    sget-object v0, Lcom/oplus/camera/ui/preview/a/-$$Lambda$j$k_H5ZO5vfj0viiqyT_sV-pkBL0c;->INSTANCE:Lcom/oplus/camera/ui/preview/a/-$$Lambda$j$k_H5ZO5vfj0viiqyT_sV-pkBL0c;

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static f()V
    .locals 7

    const-string v0, "FilterHelper"

    const-string v1, "resetGrandTourFilters"

    .line 843
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.oplus.support.grand.tour.filter"

    .line 845
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 846
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->c:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/j;->a(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    .line 849
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 850
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 851
    sget-object v4, Lcom/oplus/camera/ui/preview/a/j;->d:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 852
    sget-object v5, Lcom/oplus/camera/ui/preview/a/j;->e:Lcom/oplus/camera/ui/preview/a/i;

    iget-object v5, v5, Lcom/oplus/camera/ui/preview/a/i;->b:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 853
    sget-object v6, Lcom/oplus/camera/ui/preview/a/j;->e:Lcom/oplus/camera/ui/preview/a/i;

    invoke-virtual {v6, v5}, Lcom/oplus/camera/ui/preview/a/i;->a(I)V

    .line 854
    sget-object v5, Lcom/oplus/camera/ui/preview/a/j;->e:Lcom/oplus/camera/ui/preview/a/i;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v3, v2, v4}, Lcom/oplus/camera/ui/preview/a/i;->c(ILjava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 857
    :cond_0
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 858
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const-string v0, "None"

    .line 859
    sput-object v0, Lcom/oplus/camera/ui/preview/a/j;->b:Ljava/lang/String;

    const/4 v0, 0x0

    .line 860
    sput-boolean v0, Lcom/oplus/camera/ui/preview/a/j;->t:Z

    :cond_1
    return-void
.end method

.method public static g()Z
    .locals 1

    .line 928
    sget-boolean v0, Lcom/oplus/camera/ui/preview/a/j;->t:Z

    return v0
.end method

.method public static h()I
    .locals 1

    .line 932
    sget v0, Lcom/oplus/camera/ui/preview/a/j;->z:I

    return v0
.end method

.method public static i()I
    .locals 1

    .line 936
    sget v0, Lcom/oplus/camera/ui/preview/a/j;->A:I

    return v0
.end method

.method public static j()I
    .locals 1

    .line 940
    sget v0, Lcom/oplus/camera/ui/preview/a/j;->B:I

    return v0
.end method

.method public static k()I
    .locals 1

    .line 944
    sget v0, Lcom/oplus/camera/ui/preview/a/j;->C:I

    return v0
.end method

.method public static l()I
    .locals 1

    .line 948
    sget v0, Lcom/oplus/camera/ui/preview/a/j;->D:I

    return v0
.end method

.method public static synthetic lambda$k_H5ZO5vfj0viiqyT_sV-pkBL0c()V
    .locals 0

    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->Q()V

    return-void
.end method

.method public static synthetic lambda$weIxL3OlhF4ShLQDmQgbnNgXpkA(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/oplus/camera/ui/preview/a/j;->a(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I

    move-result p0

    return p0
.end method

.method public static m()I
    .locals 1

    .line 952
    sget v0, Lcom/oplus/camera/ui/preview/a/j;->F:I

    return v0
.end method

.method public static n()I
    .locals 1

    .line 956
    sget v0, Lcom/oplus/camera/ui/preview/a/j;->E:I

    return v0
.end method

.method public static o()I
    .locals 1

    .line 960
    sget v0, Lcom/oplus/camera/ui/preview/a/j;->K:I

    return v0
.end method

.method public static p()I
    .locals 1

    .line 968
    sget v0, Lcom/oplus/camera/ui/preview/a/j;->M:I

    return v0
.end method

.method public static q()I
    .locals 1

    .line 972
    sget v0, Lcom/oplus/camera/ui/preview/a/j;->N:I

    return v0
.end method

.method public static r()I
    .locals 1

    .line 976
    sget v0, Lcom/oplus/camera/ui/preview/a/j;->O:I

    return v0
.end method

.method public static s()I
    .locals 1

    .line 980
    sget v0, Lcom/oplus/camera/ui/preview/a/j;->Q:I

    return v0
.end method

.method public static t()I
    .locals 1

    .line 984
    sget v0, Lcom/oplus/camera/ui/preview/a/j;->P:I

    return v0
.end method

.method public static u()I
    .locals 1

    .line 988
    sget v0, Lcom/oplus/camera/ui/preview/a/j;->R:I

    return v0
.end method

.method public static v()I
    .locals 1

    .line 992
    sget v0, Lcom/oplus/camera/ui/preview/a/j;->S:I

    return v0
.end method

.method public static w()I
    .locals 1

    .line 996
    sget v0, Lcom/oplus/camera/ui/preview/a/j;->T:I

    return v0
.end method

.method public static x()I
    .locals 1

    .line 1000
    sget v0, Lcom/oplus/camera/ui/preview/a/j;->U:I

    return v0
.end method

.method public static y()V
    .locals 2

    const/4 v0, 0x0

    .line 1396
    sput v0, Lcom/oplus/camera/ui/preview/a/j;->aa:I

    const/4 v1, 0x0

    .line 1397
    sput v1, Lcom/oplus/camera/ui/preview/a/j;->Y:F

    .line 1398
    sput v0, Lcom/oplus/camera/ui/preview/a/j;->ac:I

    .line 1399
    sput v0, Lcom/oplus/camera/ui/preview/a/j;->ax:I

    .line 1400
    sput v0, Lcom/oplus/camera/ui/preview/a/j;->ay:I

    .line 1401
    sput v0, Lcom/oplus/camera/ui/preview/a/j;->az:I

    const/4 v0, 0x0

    .line 1402
    sput-object v0, Lcom/oplus/camera/ui/preview/a/j;->au:Landroid/graphics/Paint$FontMetricsInt;

    return-void
.end method

.method public static z()F
    .locals 1

    .line 2522
    sget v0, Lcom/oplus/camera/ui/preview/a/j;->aa:I

    int-to-float v0, v0

    return v0
.end method
