/*
 * generated by Xtext 2.12.0
 */
package com.example.classes.ui;

import com.example.classes.inlineedit.ui.internal.InlineeditActivator;
import com.google.inject.Injector;
import org.eclipse.xtext.ui.guice.AbstractGuiceAwareExecutableExtensionFactory;
import org.osgi.framework.Bundle;

/**
 * This class was generated. Customizations should only happen in a newly
 * introduced subclass. 
 */
public class InlineeditExecutableExtensionFactory extends AbstractGuiceAwareExecutableExtensionFactory {

	@Override
	protected Bundle getBundle() {
		return InlineeditActivator.getInstance().getBundle();
	}
	
	@Override
	protected Injector getInjector() {
		return InlineeditActivator.getInstance().getInjector(InlineeditActivator.COM_EXAMPLE_CLASSES_INLINEEDIT);
	}
	
}