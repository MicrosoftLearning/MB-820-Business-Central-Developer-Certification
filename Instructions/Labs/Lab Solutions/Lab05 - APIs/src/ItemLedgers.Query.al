query 50100 ItemLedgers
{
    APIGroup = 'powerBI';
    APIPublisher = 'contoso';
    APIVersion = 'v1.0';
    EntityName = 'itemLedger';
    EntitySetName = 'itemLedgers';
    QueryType = API;
    
    elements
    {
        dataitem(itemLedgerEntry; "Item Ledger Entry")
        {
            column(itemNo; "Item No.")
            {
                Caption = 'Item No.';
            }
            column(entryType; "Entry Type")
            {
                Caption = 'Entry Type';
            }
            column(documentType; "Document Type")
            {
                Caption = 'Document Type';
            }
            column(postingDate; "Posting Date")
            {
                Caption = 'Posting Date';
            }
            column(salesAmountActual; "Sales Amount (Actual)")
            {
                Caption = 'Sales Amount (Actual)';
                Method = Sum;
            }
            column(quantity; Quantity)
            {
                Caption = 'Quantity';
                Method = Sum;
            }
        }
    }
}
