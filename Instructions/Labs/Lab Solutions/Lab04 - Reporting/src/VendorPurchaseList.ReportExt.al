reportextension 50400 "Vendor Purchase List" extends "Vendor - Purchase List"
{
    dataset
    {
        add(Vendor)
        {
            column(PaymentTermsCode; "Payment Terms Code")
            {
                IncludeCaption = true;
            }
        }
    }
    rendering{
        layout("StandardSalesInvoice.rdlc")
        {
            Type = RDLC;
            LayoutFile = './src/Vendor Purchase List.rdlc';
            Caption = 'Vendor Purchase List';
            Summary = 'Vendor Purchase List';
        }
    }
}
