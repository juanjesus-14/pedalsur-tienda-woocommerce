# PedalSur · Tienda online de bicicletas

Tienda virtual de bicicletas y accesorios (carretera, montaña y eléctricas) montada con **WordPress + WooCommerce** en un entorno local con **XAMPP**. Proyecto realizado como tarea del ciclo de **Desarrollo de Aplicaciones Web (DAW)**.

![Logo de PedalSur](assets/branding/pedalsur_logo.png)

> Este repositorio **no contiene el núcleo de WordPress ni los plugins**: se instalan desde sus fuentes oficiales. Aquí está lo propio del proyecto: la base de datos de la tienda (sin usuarios), la configuración de ejemplo, la identidad visual y los pasos para reproducirla.

## Tecnologías

| Componente | Versión |
|---|---|
| WordPress (en español) | 7.1.3 |
| Tema Astra | 4.14.0 |
| WooCommerce | 11.1.2 |
| Contact Form 7 | 6.1.7 |
| Servidor local | XAMPP (Apache + MySQL/MariaDB), PHP 8.2 |

## Qué hay en el repositorio

```
├── README.md
├── .gitignore
├── wp-config-sample.php      Configuración de ejemplo (sin contraseñas ni claves reales)
├── assets/branding/          Logo, icono y banners de las categorías (diseño propio)
├── database/pedalsur.sql     Volcado de la tienda: sin usuarios, sesiones ni pedidos
└── docs/capturas/            Capturas de pantalla de la tienda
```

## Qué se ha configurado

- **Catálogo:** 10 productos simples (bicicletas de montaña, eléctricas y de carretera, y accesorios como bomba, candado, luces, guantes y cubiertas) con SKU, precio y stock, y precio rebajado en algunos de ellos.
- **Categorías de producto:** Bicicletas, Carretera, Montaña, Eléctricas y Accesorios.
- **Páginas:** Inicio (portada estática), Tienda, Carrito, Finalizar compra, Mi cuenta, Empresa, Contacto, Blog, Información legal, Política de cookies y Protección de datos, más una entrada de blog.
- **Pagos (métodos de prueba):** transferencia bancaria y pago contra reembolso. PayPal desactivado.
- **Envíos:** zona España con envío gratuito a partir de 50 € y tarifa plana.
- **Formulario de contacto** con Contact Form 7.
- **Ajustes:** sitio en español, moneda en euros y enlaces permanentes con el nombre de la entrada (`/%postname%/`, con base `producto` para los productos).

## Instalación en local

1. Instala **XAMPP** y arranca **Apache** y **MySQL** desde su panel.
2. Descarga **WordPress 7.1.3 en español** y descomprímelo en `C:\xampp\htdocs\pedalsur`.
3. Crea una base de datos llamada `pedalsur` en `http://localhost/phpmyadmin`.
4. Copia `wp-config-sample.php` de este repositorio como `wp-config.php` en la raíz de WordPress y rellena la contraseña y las claves (puedes generarlas en https://api.wordpress.org/secret-key/1.1/salt/). Si tu MySQL usa el puerto 3306, pon `127.0.0.1` en `DB_HOST`.
5. Copia las carpetas del tema **Astra 4.14.0** y de los plugins **WooCommerce 11.1.2** y **Contact Form 7 6.1.7** en `wp-content/themes` y `wp-content/plugins`, o instálalos desde el panel de WordPress más adelante.
6. Importa `database/pedalsur.sql` desde la pestaña *Importar* de phpMyAdmin.
7. El volcado **no incluye ningún usuario**. Crea el administrador desde la pestaña *SQL* de phpMyAdmin, cambiando `tu_contraseña` y el correo:

   ```sql
   INSERT INTO wp_users (ID, user_login, user_pass, user_nicename, user_email, user_registered, display_name)
   VALUES (1, 'admin', MD5('tu_contraseña'), 'admin', 'admin@example.com', NOW(), 'admin');
   INSERT INTO wp_usermeta (user_id, meta_key, meta_value) VALUES
   (1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
   (1, 'wp_user_level', '10');
   ```

   WordPress convierte esa contraseña a un hash seguro la primera vez que inicias sesión.
8. Abre `http://localhost/pedalsur/` y entra en `http://localhost/pedalsur/wp-admin/`.

> Las URLs del volcado apuntan a `http://localhost/pedalsur`. Si instalas la tienda en otra ruta, cambia las opciones `siteurl` y `home` en *Ajustes → Generales*.

## Imágenes de producto

Las **fotografías de producto no se incluyen** por derechos de imagen. Al importar la base de datos, los productos aparecerán sin foto hasta que subas las tuyas desde *Medios*. La identidad visual (logo, icono, cabecera, portada y banners) sí está en `assets/branding/`.

## Capturas de pantalla

*[PENDIENTE: añade en `docs/capturas/` capturas de la portada, una categoría, una ficha de producto y el carrito, y enlázalas aquí.]*

## Autor

**Juan Jesús Díaz Garrido** · [github.com/juanjesus-14](https://github.com/juanjesus-14)
