﻿<%@ Page Title="RCs" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RCList.aspx.cs" Inherits="RCShopOnline.RCList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <section>
        <div>
             <hgroup>                 
                 <h2><%: Page.Title %></h2>             
             </hgroup> 
             <asp:ListView ID="rcList" runat="server" DataKeyNames="RCID" GroupItemCount="4"                 
                 ItemType="RCShopOnline.Models.RC" SelectMethod="GetRCs">
      <EmptyDataTemplate>                     
          <table >                         
              <tr>                             
                  <td>No data was returned.</td>                         
              </tr>                     
          </table>                 
      </EmptyDataTemplate>
   <EmptyItemTemplate>                     
       <td/>                 
   </EmptyItemTemplate>
      <GroupTemplate>                     
          <tr id="itemPlaceholderContainer" runat="server">                         
              <td id="itemPlaceholder" runat="server"></td>                     
          </tr>                 
      </GroupTemplate>
      <ItemTemplate>                     
          <td runat="server">                         
              <table>                             
                  <tr>                                 
                      <td>                                     
                          <a href="RCDetails.aspx?rcID=<%#:Item.RCID%>">                                         
                              <img src ="/Images/<%#:Item.ImagePath%>"                                                 
                                  width="150" height="225" style="border:solid" /></a>                                 
                      </td>                             
                  </tr>                             
                  <tr>                                 
                      <td>                                     
                          <a href="RCDetails.aspx?rcID=<%#:Item.RCID%>">                                         
                              <span>                                             
                                  <%#:Item.RCName%>                                         
                              </span>                                     
                          </a>                                     
                          <br />                                     
                          <span>                                         
                              <b>Price: </b><%#:String.Format("{0:c}",Item.UnitPrice)%>                                     
                          </span> 
                          <br/>

                          <a href="AddToCart.aspx?RcID=<%#:Item.RCID%>">
                              <span>
                                  <b>Add To Cart<b>
                                </span>
                              </a>

                      </td>                             
                  </tr>                             
                  <tr>                                 
                      <td>&nbsp;</td>                             
                  </tr>                     
              </table>                     
              </p>                 
          </td>             
      </ItemTemplate>
       <LayoutTemplate>                 
           <table style="width:100%;">                     
               <tbody>                         
                   <tr>                             
                       <td>                                 
                           <table id="groupPlaceholderContainer" runat="server" style="width:100%">                                     
                               <tr id="groupPlaceholder"></tr>                                 
                           </table>                             
                       </td>                         
                   </tr>                         
                   <tr>                             
                       <td></td>                         
                   </tr>                         
                   <tr></tr>                     
               </tbody>                 
           </table>              
       </LayoutTemplate>           

        </asp:ListView> 
        </div>
        </section>
  </asp:Content>
