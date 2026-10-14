# Merge It

**Merge It** is an offline Windows desktop application that converts spreadsheet data (Excel/CSV) into PowerPoint (`.pptx`) presentations.

You provide a spreadsheet (`.xlsx`, `.xls`, `.csv`, ...) with headers plus a PowerPoint template containing placeholders such as `{{Customer Name}}`. Merge It maps each column to its placeholder and generates presentations — either **one PPTX per row** or **one combined PPTX for all rows**.

## Features

- Converts spreadsheet data into polished business presentation files
- Supports Excel and CSV input with header-based column mapping
- Works with PowerPoint templates using `{{Placeholder}}` text
- Generate **one PPTX per row** or **one PPTX for all rows**
- Fully offline — no internet connection required
- Built with Electron, JavaScript, HTML and CSS

## Download

The latest Windows installer is published on the website repository releases:

- **Website:** https://tsguideman.github.io/Merge-It-Site/
- **Downloads:** https://github.com/TsGuideMan/Merge-It-Site/releases

## Usage

1. Prepare a spreadsheet file (`.xlsx`, `.xls`, `.csv`, etc.) with headers.
2. Prepare a PowerPoint template (`.pptx`) containing placeholders like `{{Customer Name}}`.
3. Open the Merge It application.
4. Choose the spreadsheet data file and the PowerPoint template.
5. Select the worksheet and set the row range.
6. Set the output name and choose the generation mode:
   - One PPTX per row
   - One PPTX for all rows
7. Click **Create files** to generate the output presentation(s).
8. Save the generated file(s) to your preferred location.

**Tips**

- Placeholders must match the exact column headers in the spreadsheet.
- Use one text run for each placeholder in the PowerPoint template.
- Start row should normally be `2` if the first row contains headers.

## Run from source

Requirements: [Node.js](https://nodejs.org/) 18 or later.

```bash
npm install
npm start
```

## Build the Windows installer

```bash
npm run build
```

The installer is written to `dist/MergeIt-Setup-<version>.exe`.

## Project layout

| File | Purpose |
| --- | --- |
| `main.js` | Electron main process (window setup) |
| `index.html` | Application UI and PPTX generation logic |
| `server.js` | Optional local static server (`http://127.0.0.1:8000`) |
| `build/` | Application icons |
| `package.json` | Dependencies and electron-builder packaging config |

## License

Released under the [MIT License](LICENSE).
