# Baby Shower de Miranda 🌼🐝

Invitación web interactiva, cálida y mobile-first, con temática de **margaritas y abejitas**.

## Ver la invitación
Abre `index.html` con doble clic en tu navegador. No requiere instalar nada.

Para compartirla por internet puedes subirla gratis a **Netlify Drop**, **GitHub Pages** o **Vercel** (solo arrastra la carpeta).

## Cómo editar el contenido
Casi todo se edita en el objeto `CONFIG` al inicio de `script.js`:

```js
const CONFIG = {
  eventDate: new Date(2026, 9, 11, 18, 0, 0), // 11 oct, 6:00 pm (mes: 0=ene ... 9=oct)
  dateLabel: "Sábado 11 de octubre · 6:00 pm",
  address: "San Eugenio 990",
  whatsappNumber: "",   // ej. "521XXXXXXXXXX" (sin + ni espacios)
  gifts: [
    { emoji: "🍼", label: "Amazon - Lista de bebé", url: "https://..." },
  ],
};
```

### Agregar los links de regalos 🎁
Rellena el arreglo `gifts` en `script.js`. Cada regalo es un objeto:

```js
{ emoji: "🧸", label: "Nombre de la tienda", url: "https://enlace-real.com" }
```

Mientras esté vacío, el modal muestra "Pronto agregaremos los enlaces".

### Confirmación por WhatsApp
Pon tu número en `whatsappNumber` (formato internacional, sin `+` ni espacios).
Si lo dejas vacío, el botón mostrará un aviso amable.

## Estructura
- `index.html` — contenido y secciones
- `styles.css` — diseño, paleta cálida y animaciones
- `script.js` — abejitas, pétalos, cuenta regresiva, modal de regalos, config

Hecho con mucho amor para Miranda 💛
