pageextension 50101 VendorList extends "Vendor List"
{
    layout
    {
        addlast(Control1)
        {
            field("Vendor Rating"; Rec."Vendor Rating")
            {
                ToolTip = 'The rating of the vendor.';
                ApplicationArea = All;
            }
        }
    }
}