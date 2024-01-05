page 50300 MyRoleCenter
{
    PageType = RoleCenter;
    Caption = 'My Role Center';

    layout
    {
        area(RoleCenter)
        {

            part(Part1; "Headline RC Business Manager")
            {
                ApplicationArea = All;
            }

            part(Part2; "O365 Activities")
            {
                ApplicationArea = All;
            }

        }
    }


    actions
    {
        area(Sections)
        {
            group(PostedInvoices)
            {
                Caption = 'Posted Invoices';
                Image = RegisteredDocs;
                action(PostedServiceInvoices)
                {
                    Caption = 'Posted Service Invoices';
                    RunObject = Page "Posted Service Invoices";
                    ApplicationArea = All;
                }

                action(PostedSalesInvoices)
                {
                    Caption = 'Posted Sales Invoices';
                    RunObject = Page "Posted Sales Invoices";
                    ApplicationArea = All;
                }

                group(SalesDocuments)
                {
                    Caption = 'Sales Documents';
                    action("Sales Document Entity")
                    {
                        ApplicationArea = All;
                        RunObject = page "Sales Document Entity";
                    }
                    action("Sales Document Line Entity")
                    {
                        ApplicationArea = All;
                        RunObject = page "Sales Document Line Entity";
                    }
                }
            }
        }

        area(Embedding)
        {

            action(Sales)
            {
                Caption = 'Sales lists';
                RunObject = Page "Sales list";
                ApplicationArea = All;
            }

            action(Services)
            {
                Caption = 'Service lists';
                RunObject = Page "Service list";
                ApplicationArea = All;

            }


        }

        area(Processing)
        {
            action(SeeSalesInvoices)
            {
                Caption = 'See Sales Invoices';
                RunObject = Page "Posted Sales Invoices";
                ToolTip = 'See Sales Invoices';
                ApplicationArea = All;
            }

        }

        area(Creation)
        {
            action(AddSalesInvoice)
            {
                Caption = 'Add Sales Invoice';
                ToolTip = 'Add Sales Invoice';
                Image = NewInvoice;
                RunObject = Page "Sales Invoice";
                RunPageMode = Create;
                ApplicationArea = All;
            }
        }

        area(Reporting)
        {
            action(SalesInvoicesReport)
            {
                Caption = 'Sales Invoices Report';
                ToolTip = 'Sales Invoices Report';
                Image = "Report";
                RunObject = Report "Standard Sales - Invoice";
                ApplicationArea = All;
            }
        }
    }
}

