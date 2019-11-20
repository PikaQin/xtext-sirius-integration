/*
 * generated by Xtext 2.14.0
 */
package com.altran.general.integration.xtextsirius.test.reflang.edit.ui;

import com.altran.general.integration.xtextsirius.test.reflang.edit.ui.internal.EditActivator;
import com.google.inject.Injector;
import org.eclipse.core.runtime.Platform;
import org.eclipse.xtext.ui.guice.AbstractGuiceAwareExecutableExtensionFactory;
import org.osgi.framework.Bundle;

/**
 * This class was generated. Customizations should only happen in a newly
 * introduced subclass. 
 */
public class RefLangEditExecutableExtensionFactory extends AbstractGuiceAwareExecutableExtensionFactory {

	@Override
	protected Bundle getBundle() {
		return Platform.getBundle(EditActivator.PLUGIN_ID);
	}
	
	@Override
	protected Injector getInjector() {
		EditActivator activator = EditActivator.getInstance();
		return activator != null ? activator.getInjector(EditActivator.COM_ALTRAN_GENERAL_INTEGRATION_XTEXTSIRIUS_TEST_REFLANG_EDIT_REFLANGEDIT) : null;
	}

}