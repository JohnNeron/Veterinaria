package com.duoc.spring.controller;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.duoc.spring.model.Duenio;
import com.duoc.spring.model.Mascota;
import com.duoc.spring.model.Rol;
import com.duoc.spring.model.Usuario;
import com.duoc.spring.repository.IDuenioRepository;
import com.duoc.spring.repository.IMascotaRepository;
import com.duoc.spring.repository.IRolRepository;
import com.duoc.spring.repository.IUsuarioRepository;

@Controller
public class WebController {

	@ModelAttribute("duenio")
	public Duenio setDuenio() {
		return new Duenio();
	}
	
	@ModelAttribute("mascota")
	public Mascota setMascota() {
		return new Mascota();
	}
	
	@ModelAttribute("usuario")
	public Usuario setUsuario() {
		return new Usuario();
	}
	
	@ModelAttribute("rol")
	public Rol setRol() {
		return new Rol();
	}
	
	@Autowired
	private BCryptPasswordEncoder encoder;
	@Autowired
	private IDuenioRepository repoD;
	@Autowired
	private IMascotaRepository repoM;
	@Autowired
	private IUsuarioRepository repoU;
	@Autowired
	private IRolRepository repoR;
	
	@GetMapping("/")
	public String getIndex(Authentication auth)
	{
		if (auth.getAuthorities().contains(new SimpleGrantedAuthority("ADMIN"))) {
			return "index";
		} else {
			return "indexCliente";
		}		
	}
	
	@GetMapping("/login")
	public String getLogin()
	{
		return "login";
	}
	
	@GetMapping("/registrar")
	public String registrar(Model model)
	{
		model.addAttribute("roles", repoR.findAll());
		return "registro";
	}
	
	@PostMapping("/agregarUsuario")
	public String agregarUsuario(@Valid @ModelAttribute("usuario")Usuario u, BindingResult br, Model model)
	{
		if(br.hasErrors()) {
			model.addAttribute("roles", repoR.findAll());
			return "registro";
		} else {
			u.setPassword(encoder.encode(u.getPassword()));
			repoU.save(u);
			return "registroDuenio";
		}
	}
	
	@PostMapping("/agregarDuenio")
	public String agregarDuenio(@Valid @ModelAttribute("duenio")Duenio d, BindingResult br, Model model) {
		if(br.hasErrors()) {
			return "registroDuenio";
		} else {
			repoD.save(d);
			return "indexCliente";
		}
	}
	
	@GetMapping("/registrarMascota")
	public String getRegistroMascota() {
		return "registroMascota";
	}
	
	@PostMapping("/agregarMascota")
	public String agregarMascota(@Valid @ModelAttribute("mascota")Mascota m, BindingResult br, Model model, Authentication auth) {
		if(br.hasErrors()) {
			return "registroMascota";
		} else {
			
			repoM.save(m);
			ArrayList<Mascota> mascotas = new ArrayList<Mascota>();
			mascotas.add(m);
			listarDuenio(model);
			if(auth.getAuthorities().contains(new SimpleGrantedAuthority("ADMIN"))) {
				model.addAttribute("mascotas", repoM.findAll());
				return "ver";
			} else {
				return "datos";
			}
		}
	}
	
	@GetMapping("/listar")
	public String getVer(Authentication auth, String id, Model model) {
		listarDuenio(model);
		if(auth.getAuthorities().contains(new SimpleGrantedAuthority("ADMIN"))) {
			model.addAttribute("mascotas", repoM.findAll());
			return "ver";
		} else {
			return "datos";
		}
	}
	
	@GetMapping("/listarMascotas")
	public String listarMascotas(Model model, Authentication auth) {
		listarMascota(model);
		if(auth.getAuthorities().contains(new SimpleGrantedAuthority("ADMIN"))) {
			return "verMascota";
		} else {
			return "datosMascota";
		}
	}
	
	private void listarDuenio(Model model) {
		List<Duenio> duenios = repoD.findAll();
		model.addAttribute("duenios", duenios);
	}
	
	private void listarMascota(Model model) {
		List<Mascota> mascotas = repoM.findAll();
		model.addAttribute("mascotas", mascotas);
	}
	
	@PostMapping("/CargarDuenio")
	public String CargarDuenio(String id, Model model) {
		model.addAttribute("mascotas", repoM.findAll());
		model.addAttribute("duenio", repoD.getOne(Integer.parseInt(id)));
		return "modificar";
	}
	
	@PostMapping("/AgregarAlDuenio")
	public String AgregarAlDuenio(String id, Model model) {
		model.addAttribute("mascotas", repoM.findAll());
		model.addAttribute("duenio", repoD.getOne(Integer.parseInt(id)));
		return "agregar";
	}
	
	@PostMapping("modificarDuenio")
	public String modificarDuenio(@Valid @ModelAttribute("duenio") Duenio d, BindingResult br, Model model, Authentication auth) {
		if(br.hasErrors()) {
			return "modificar";
		} else {
			repoD.save(d);
			model.addAttribute("duenios", d);
			listarDuenio(model);
			if(auth.getAuthorities().contains(new SimpleGrantedAuthority("ADMIN"))) {
				return "ver";
			} else {
				return "datos";
			}
		}
	}
	
	@PostMapping("/CargarMascota")
	public String CargarMascota(String id, Model model) {
		model.addAttribute("mascota", repoM.getOne(Integer.parseInt(id)));
		return "modificarMascota";
	}
	
	@PostMapping("/modificarMascota")
	public String modificarMascota(@Valid @ModelAttribute("mascota") Mascota m, BindingResult br, Model model, Authentication auth) {
		if(br.hasErrors()) {
			return "modificarMascota";
		} else {
			repoM.save(m);
			model.addAttribute("mascotas", m);
			listarMascota(model);
			if(auth.getAuthorities().contains(new SimpleGrantedAuthority("ADMIN"))) {
				return "verMascota";
			} else {
				return "datosMascota";
			}		
		}
	}
	
	@PostMapping("/agregar")
	public String agregar(@ModelAttribute("duenio")Duenio d, Model model, Authentication auth) {
		ArrayList<Mascota> mascotas = new ArrayList<Mascota>();
		mascotas.addAll(d.getMascota());
		d.setMascota(mascotas);
		repoD.save(d);
		model.addAttribute("duenios", d);
		listarDuenio(model);
		if(auth.getAuthorities().contains(new SimpleGrantedAuthority("ADMIN"))) {
			return "ver";
		} else {
			return "datos";
		}
	}
	
	@PostMapping("/EliminarDuenio")
	public String eliminarDuenio(String id, Model model, Authentication auth) {
		repoD.deleteById(Integer.parseInt(id));
		listarDuenio(model);
		if(auth.getAuthorities().contains(new SimpleGrantedAuthority("ADMIN"))) {
			return "ver";
		} else {
			return "datos";
		}
	}
	
	@PostMapping("/EliminarMascota")
	public String eliminarMascota(String id, Model model, Authentication auth) {
		repoM.deleteById(Integer.parseInt(id));
		listarMascota(model);
		if(auth.getAuthorities().contains(new SimpleGrantedAuthority("ADMIN"))) {
			return "verMascota";
		} else {
			return "datosMascota";
		}
	}
}
