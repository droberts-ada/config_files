"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const vscode = require("vscode");
const os_1 = require("os");
class TableFinder {
    constructor(_tableValidator) {
        this._tableValidator = _tableValidator;
    }
    getTables(document) {
        let rows = document.getText().split(/\r\n|\r|\n/);
        let result = [];
        let previousRowIndex = 0;
        while (true) {
            let { tableStartRow, tableEndRow } = this.getNextResult(rows, previousRowIndex);
            if (tableStartRow == null || tableEndRow == null)
                break;
            result.push(this.getRangeForLines(tableStartRow, tableEndRow));
            previousRowIndex = tableEndRow;
        }
        return result;
    }
    getNextResult(rows, startAtRow) {
        // look for the separator row, assume table starts 1 row before & ends when invalid
        let rowIndex = startAtRow;
        while (rowIndex < rows.length) {
            let table = this._tableValidator.lineIsValidSeparator(rows[rowIndex])
                ? this.getTableFromSeparatorIndex(rows, rowIndex)
                : null;
            if (table != null)
                return table;
            rowIndex++;
        }
        return {
            tableStartRow: null,
            tableEndRow: null
        };
    }
    getTableFromSeparatorIndex(rows, separatorRowIndex) {
        let tableValid = true;
        let tableStartRow = separatorRowIndex - 1;
        let tableEndRow = separatorRowIndex;
        while (tableValid && tableEndRow < rows.length) {
            tableEndRow++;
            let selection = this.concatRows(rows, tableStartRow, tableEndRow);
            tableValid = this._tableValidator.isValid(selection);
        }
        // make sure there is at least 1 row after the separator
        return tableEndRow > separatorRowIndex + 1
            ? {
                tableStartRow: tableStartRow,
                tableEndRow: tableEndRow - 1
            }
            : null;
    }
    concatRows(rows, from, to) {
        let relevantRows = rows.slice(from, to + 1);
        return relevantRows.join(os_1.EOL);
    }
    getRangeForLines(startLine, endLine) {
        return new vscode.Range(new vscode.Position(startLine, 0), new vscode.Position(endLine, Number.MAX_SAFE_INTEGER) // avoid calculating the column in the editor, this will be validated by vscode
        );
    }
}
exports.TableFinder = TableFinder;
//# sourceMappingURL=tableFinder.js.map