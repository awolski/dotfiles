;;; Compiled snippets and support files for `ledger-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'ledger-mode
                     '(("<t" "${1:`(org-read-date)`} * Transfer\n    assets:cash:$3    £-${2:}\n    assets:cash:$4\n" "transfer-cash" nil nil
                        ((yas-indent-line 'fixed))
                        "/home/tony/.emacs.d/snippets/ledger-mode/transfer" nil nil)
                       ("salary-informa" "`(org-read-date)` * Informa\n    income:informa:salary                                   £-5,916.67\n    expenses:gross:flex_adjustment                              £23.61\n    expenses:gross:pension                                   £1,715.84\n    expenses:gross:tax:income                                  £628.86\n    expenses:gross:tax:ni                                      £250.34\n    assets:cash:wise:budget:bills                             £1300.00  ;; Mortgage\n    assets:cash:wise:budget:bills                              £198.00  ;; Council Tax\n    assets:cash:wise:budget:bills                              £103.21  ;; Utilities\n    assets:cash:wise:budget:bills                               £20.68  ;; Pet Insurance\n    assets:cash:wise:budget:bills                               £33.79  ;; Broadband\n    assets:cash:wise:budget:bills                               £25.50  ;; Water\n    assets:cash:wise:budget:bills                               £10.00  ;; Mobile\n    assets:cash:wise:budget:bills                                £4.99  ;; Netflix\n    assets:cash:wise:budget:bills                                £5.00  ;; Kids Mobile\n    assets:cash:wise:budget:holiday                            £350.00\n    assets:cash:wise:budget:fun                                £300.00\n    assets:cash:wise:budget:emergency_fund                     £100.00\n    assets:cash:wise:budget:food                               £300.00\n    assets:cash:wise:budget:home:maintenance                    £50.00\n    assets:cash:wise:budget:childcare                           £50.00\n    assets:cash:wise:budget:car:petrol                          £50.00\n    assets:cash:wise:budget:kids                                £25.00  ;; Pocket money (monthly, but...)\n    assets:cash:wise:budget:pet                                 £40.00  ;; Random guess\n    assets:cash:wise:budget:gym_membership                     £127.00  ;; £1524 p/a = £127 (David Lloyd)\n    assets:cash:wise:budget:birthdays                           £40.00  ;; £240 each\n    assets:cash:wise:budget:christmas                           £40.00  ;; £240 each\n    assets:cash:wise:budget:car:insurance                       £35.00  ;; £405.03 p/a = £33.75 (Car Insurance)\n    assets:cash:wise:budget:car:maintenance                     £40.00  ;; £360 estimate p/a = £30.00\n    assets:cash:wise:budget:car:maintenance                      £2.50  ;; £30.00 p/a =  £2.50 (Road Tax)\n    assets:cash:wise:budget:car:maintenance                      £2.00  ;; £23.98 p/a =  £2.00 (Roadside Assistance)\n    assets:cash:wise:budget:home:insurance                      £20.00  ;; £212.00 p/a = £17.67 (Home Insurance)\n    assets:cash:wise:budget:subscriptions:ofw                   £14.00  ;; £79.00 * 2 p/a = £13.167 (OFW)\n    assets:cash:wise:budget:travel_insurance                     £8.00  ;; 83.83 in 2024\n    assets:cash:wise:budget:unallocated                          £3.35\n" "salary-informa" nil nil nil "/home/tony/.emacs.d/snippets/ledger-mode/salary-informa" nil nil)
                       ("<mdd" "${1:`(org-read-date)`} * Santander\n    liabilities:mortgage:turnham                               £484.95\n    expenses:mortgage:interest                                 £732.51\n    liabilities:mortgage:turnham\n    assets:cash:wise:budget:bills                           £-1,300.00\n\n$1 * Octopus Energy\n    expenses:home:utilities                                     £82.19\n    assets:cash:wise:budget:bills\n\n$1 * Waggel\n    expenses:pet:insurance                                      £20.68\n    assets:cash:wise:budget:bills\n\n$1 * Cardiff Council\n    expenses:home:council_tax                                  £198.00\n    assets:cash:wise:budget:bills\n\n$1 * Welsh Water\n    expenses:home:water                                         £24.00\n    assets:cash:wise:budget:bills\n" "monthly-direct-debits" nil nil
                        ((yas-indent-line 'fixed))
                        "/home/tony/.emacs.d/snippets/ledger-mode/monthly-direct-debits" nil nil)
                       ("<iwa" "`(format-time-string \"%Y-%m-%d\")` * Wise AUD Interest\n    income:interest                                             $1 AUD\n    assets:cash:wise_aud:budget:unallocated\n" "ledger_wise_aud_interest" nil nil
                        ((yas-indent-line 'fixed))
                        "/home/tony/.emacs.d/snippets/ledger-mode/interest-wise-aud" nil nil)
                       ("<iw" "`(format-time-string \"%Y-%m-%d\")` * Wise Interest\n    income:interest                                             £-$1\n    assets:cash:wise:budget:unallocated\n" "ledger_wise_interest" nil nil
                        ((yas-indent-line 'fixed))
                        "/home/tony/.emacs.d/snippets/ledger-mode/interest-wise" nil nil)
                       ("<dwa" "`(org-read-date)` * $1\n    ; $2\n    expenses:$4\n    assets:cash:wise_aud$5                  -$3 AUD\n" "debit-wise-aud" nil nil
                        ((yas-indent-line 'fixed))
                        "/home/tony/.emacs.d/snippets/ledger-mode/debit-wise_aud" nil nil)
                       ("<dw" "${1:`(org-read-date)`} * $2\n    expenses:$4\n    assets:cash:wise:budget:$5                  £-${3:}" "debit-wise" nil nil
                        ((yas-indent-line 'fixed))
                        "/home/tony/.emacs.d/snippets/ledger-mode/debit-wise" nil nil)
                       ("<dc" "${1:`(org-read-date)`} * $2\n    expenses:$4    £${3:}\n    assets:cash:petty\n\n$1 * Budget Allocation\n    assets:cash:petty:budget:$5                                 £-$3\n    assets:cash:petty\n" "debit-cash-petty" nil nil
                        ((yas-indent-line 'fixed))
                        "/home/tony/.emacs.d/snippets/ledger-mode/debit-petty" nil nil)
                       ("<dm" "${1:`(org-read-date)`} * $2\n    expenses:$4\n    assets:cash:monzo                  £-${3:}" "debit-monzo" nil nil
                        ((yas-indent-line 'fixed))
                        "/home/tony/.emacs.d/snippets/ledger-mode/debit-monzo" nil nil)
                       ("<da" "`(org-read-date)` ! $1\n    ; $2\n    expenses:$4                                                    £${3:}\n    liabilities:credit:amex_ba                                  £-$3\n    assets:cash:wise:budget:pending:amex_ba                      £$3\n    assets:cash:wise:budget:$5                                    £-$3\n" "debit-amex_ba" nil nil
                        ((yas-indent-line 'fixed))
                        "/home/tony/.emacs.d/snippets/ledger-mode/debit-amex_ba" nil nil)
                       ("<cwa" "${5:`(org-read-date)`} * $1\n    income:$3    -${2:} AUD\n    assets:cash:wise_aud\n\n$5 * Budget Allocation\n    assets:cash:wise_aud:budget:$4                                $2 AUD\n    assets:cash:wise_aud" "ledger-credit-wise-aud" nil nil
                        ((yas-indent-line 'fixed))
                        "/home/tony/.emacs.d/snippets/ledger-mode/credit-wise_aud" nil nil)
                       ("<cw" "${1:`(org-read-date)`} * $2\n    income:$4\n    assets:cash:wise:budget:$5                   £${3:}\n" "credit-cash-wise" nil nil
                        ((yas-indent-line 'fixed))
                        "/home/tony/.emacs.d/snippets/ledger-mode/credit-wise" nil nil)
                       ("<cp" "${1:`(org-read-date)`} * $2\n    income:$4    £-${3:}\n    assets:cash:petty\n" "credit-cash-petty" nil nil
                        ((yas-indent-line 'fixed))
                        "/home/tony/.emacs.d/snippets/ledger-mode/credit-petty" nil nil)
                       ("<cm" "${1:`(org-read-date)`} * $2\n    income:$4\n    assets:cash:monzo                   £${3:}\n" "credit-cash-monzo" nil nil
                        ((yas-indent-line 'fixed))
                        "/home/tony/.emacs.d/snippets/ledger-mode/credit-monzo" nil nil)
                       ("<ca" "${5:`(org-read-date)`} * $1\n    expenses:$3\n    liabilities:credit:amex_ba  £${2:}\n\n$5 * Budget Allocation\n    assets:cash:wise:budget:$4\n    assets:cash:wise:budget:pending:amex_ba  £-$2" "ledger-credit-amex_ba" nil nil
                        ((yas-indent-line 'fixed))
                        "/home/tony/.emacs.d/snippets/ledger-mode/credit-amex_ba" nil nil)
                       ("child-benefit" "`(org-read-date)` * Child Benefit\n    income:child_benefit                                      £-102.40\n    assets:cash:wise:budget:kids" "child-benefit" nil nil nil "/home/tony/.emacs.d/snippets/ledger-mode/child-benefit" nil nil)))


;;; Do not edit! File generated at Mon Feb  3 10:03:24 2025
