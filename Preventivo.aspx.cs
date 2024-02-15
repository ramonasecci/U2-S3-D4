using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Preventivi
{
    public partial class Preventivo : System.Web.UI.Page
    {
            protected void Page_Load(object sender, EventArgs e)
            {
            if (!IsPostBack)
            {
                // Inizializza l'immagine dell'auto
                imgCar.ImageUrl = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxow52uB99Qm7mk6t0snGGgP1FSF3lRa5hPg&usqp=CAU";
            }
            }

            protected void ddlCar_SelectedIndexChanged(object sender, EventArgs e)
            {
            // Aggiorna l'immagine dell'auto in base alla selezione
            tltprice.InnerText = "Prezzo";

            switch (ddlCar.SelectedItem.Text)
                {
                    case "Auto A":
                        imgCar.ImageUrl = "https://www.mad-motors.com/new/wp-content/uploads/revslider/rightside-car.png";
                    
                    lblCosto.Text = "20000€";
                    
                    break;
                    case "Auto B":
                        imgCar.ImageUrl = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgQx7mLUsVg1G5UXXTDtw3z8f_YAJYBv7pkQ&usqp=CAU";
                    
                    lblCosto.Text = "25000€";
                    break;
                    case "Auto C":
                        imgCar.ImageUrl = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJRs2xMrt3EaAWmnGFMiSdp5DC25x9AW4umg&usqp=CAU";
                    
                    lblCosto.Text = "30000€";
                    break;
                }
            }

            protected void btnCalculate_Click(object sender, EventArgs e)
            {
            
                // Calcola il prezzo base
                decimal basePrice = Convert.ToDecimal(ddlCar.SelectedValue);

                // Calcola il totale degli optional
                decimal optionalTotal = 0;
                foreach (ListItem item in cblOptions.Items)
                {
                    if (item.Selected)
                    {
                        optionalTotal += Convert.ToDecimal(item.Value);
                    }
                }

                int years = int.Parse(txtWarrantyYears.Text);

                if(basePrice > 0 || years >= 0 ) 
            {   // Calcola il totale della garanzia
                decimal warrantyTotal = years * 120;

                // Calcola il totale complessivo
                decimal totalPrice = basePrice + optionalTotal + warrantyTotal;

                // Visualizza i risultati
                lblBasePrice.Text = basePrice.ToString("C");
                lblOptionalTotal.Text = optionalTotal.ToString("C");
                lblWarrantyTotal.Text = warrantyTotal.ToString("C");
                lblTotalPrice.Text = totalPrice.ToString("C");

            }
            else
            {
                Response.Write("Per poter calcolare il preventivo seleziona almeno un auto e inserisci gli anni");
            }

                
                
            }
        }


    }

    
