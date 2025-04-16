# 10. En una empresa se va a repartir las utilidades entre
# los empleados al final del año. El dinero que va a
# recibir el empleado depende del cargo que ocupa, del
# salario y de los años que lleva trabajando en la
# empresa. Se debe solicitar por empleado, el cargo, el
# salario y los años trabajados.
# La empresa tiene las siguientes opciones para el cargo
# del empleado y se indica el porcentaje del salario a
# tener en cuenta para el pago de las utilidades del
# empleado:
# CARGO % DEL SALARIO
# Directivo 20 %
# Profesional 10 %
# Técnico 6 %
# Auxiliar 3 %
# Igualmente se deben tener en cuenta las siguientes
# condiciones dependiendo de los años trabajados así que
# también son un porcentaje del salario así:
# ANTIGÜEDAD % DEL
# SALARIO
# Menos de 5 años 5 %
# Entre 5 y 8 años 12 %
# Entre 9 y 12 años 18 %
# 13 años o mas 22 %
# Calcular y mostrar la utilidad a pagar al empleado y el
# total incluyendo utilidad y salario.

from tkinter import *
from tkinter import messagebox, simpledialog


# CONFIG ---------------------------

resolucion = "1300x700"

cargos = ['Directivo', 'Profecional', 'Tecnico', 'Auxiliar']

# ESTATICOS -----------------------

ventana = Tk()
ventana.title("Ejercicio 10")
ventana.geometry(resolucion)

# ELINPUT

IngresarSalario = Entry(ventana)
IngresarTrabajado = Entry(ventana)

# CODIGO



def calcular():
    if (cargo.get() != 'Seleccione su cargo') and (IngresarSalario.get() != '0'):
        try:
            elcargo = cargo.get()
            salario = int(IngresarSalario.get())
            Trabajado = int(IngresarTrabajado.get())

            if elcargo == 'Directivo':
                total = salario + salario * 0.2
            elif elcargo == 'Profecional':
                total = salario + salario * 0.1
            elif elcargo == 'Tecnico':
                total = salario + salario * 0.06
            elif elcargo == 'Auxiliar':
                total = salario + salario * 0.03


            if Trabajado < 5:
                total = total + salario * 0.05
            elif 4<Trabajado<9:
                total = total + salario * 0.12
            elif 8<Trabajado<13:
                total = total + salario * 0.18
            elif 13<=Trabajado:
                total = total + salario * 0.22

            respuesta.config(text=f"{ae} {format(total, '0.2f')}$")

        except:
            messagebox.showerror("ERROR", "Se han ingresado mal los campos")
    else:
        messagebox.showinfo("Advertencia", "No se han rellenado los campos requeridos")





# GUI2

titulo = Label(ventana, text="""Bienvenido al menu consultar salario, por favor ingrese todos los campos requeridos.""")
respuesta = Label(ventana, text="Sus ingresos son de: ")
mesjsalario = Label(ventana, text="Salario:")
mesjcargo = Label(ventana, text="Cargo")
mesjtrabajado = Label(ventana, text="Años trabajados:")

calcular = Button(ventana,text="Calcular",command=calcular)


ae = respuesta.cget("text")
cargo = StringVar()
opciones = OptionMenu(ventana, cargo, *cargos)


# DEFAULTS

cargo.set('Seleccione su cargo')
IngresarSalario.insert(0, '0')
IngresarTrabajado.insert(0, '0')

# PACKS

titulo.pack()
mesjsalario.pack()
IngresarSalario.pack()
mesjtrabajado.pack()
IngresarTrabajado.pack()
mesjcargo.pack()
opciones.pack()
calcular.pack()
respuesta.pack()




ventana.mainloop()